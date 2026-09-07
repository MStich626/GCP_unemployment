import functions_framework
import requests
from google.cloud import storage
import datetime

BUCKET_NAME = "eurostat-raw-data"

@functions_framework.http
def download_eurostat_to_gcs(request):

    url = "https://ec.europa.eu/eurostat/api/dissemination/sdmx/3.0/data/dataflow/ESTAT/une_rt_m/1.0?compress=false&format=csvdata&formatVersion=2.0&lang=en"

    try:
        # Download CSV from Eurostat
        response = requests.get(url)
        response.raise_for_status()
        csv_data = response.text

        # Name and destination in Bucket
        destination_blob_name = (
        "eurostat/unemployment_csv/eurostat_unemployment_latest.csv"
        )

        # 3. Direct save into Cloud Storage
        storage_client = storage.Client()
        bucket = storage_client.bucket(BUCKET_NAME)
        blob = bucket.blob(destination_blob_name)

        blob.upload_from_string(csv_data, content_type='text/csv')

        return f"Success! Download and save CSV file into: gs://{BUCKET_NAME}/{destination_blob_name}", 200

    except Exception as e:
        return f"Error while downloading data: {str(e)}", 500
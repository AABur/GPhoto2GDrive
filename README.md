# GPhoto2GDrive

GPhoto2GDrive is a Python-based web application that allows users to automatically back up their photos and videos from Google Photos to a specified folder in Google Drive. It provides a seamless and efficient way to create a backup of media files and ensures that no files are duplicated during the backup process.

## Features

- User authentication using Google's OAuth2 API
- Fetching photos and videos from the user's Google Photos account using the Google Photos API
- Uploading files to the designated Google Drive backup folder via the Google Drive API
- Asynchronous processing for optimized file copy operations
- Duplication avoidance system to prevent duplicate files during reconnection
- Configurable parameters for backup preferences

## Prerequisites

- Python 3.11
- [Google Cloud project](https://cloud.google.com/resource-manager/docs/creating-managing-projects)
- [Google Photos API credentials](https://developers.google.com/photos/library/guides/get-started#set_up_your_project)
- [Google Drive API credentials](https://developers.google.com/drive/api/v3/quickstart/python)
- [Poetry](https://python-poetry.org/)

## Installation

1. Clone the repository:

```shell
git clone https://github.com/AABur/GPhoto2GDrive.git
cd GPhoto2GDrive
```

2. Install Poetry if not already installed:

```shell
curl -sSL https://install.python-poetry.org | python3 -
```

3. Install the project dependencies using Poetry:

```shell
poetry install
```

4. Set up Google Cloud project and obtain API credentials for Google Photos and Google Drive APIs.

5. Update the settings in the `settings.py` file with your API credentials and backup preferences.

## Usage

1. Activate the Poetry environment:

```shell
poetry shell
```

2. Run the application using the following command:

```shell
python main.py
```

3. Open a web browser and navigate to `http://localhost:5000` to access the application.

4. Follow the authentication process to grant access to your Google Photos account.

5. Once authenticated, the application will automatically fetch and backup photos and videos from your Google Photos account to the specified Google Drive folder.

## Testing

To run the tests for the application, use the following command:

```shell
pytest
```

## Contributing

Contributions are welcome! Please follow the [contribution guidelines](CONTRIBUTING.md).

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Authors

- John Doe ([@johndoe](https://github.com/johndoe))
- Jane Smith ([@janesmith](https://github.com/janesmith))

## Acknowledgements

- [Google Photos API](https://developers.google.com/photos)
- [Google Drive API](https://developers.google.com/drive)
- [Flask](https://flask.palletsprojects.com/)
- [Asyncio](https://docs.python.org/3/library/asyncio.html)
- [SQLite3](https://docs.python.org/3/library/sqlite3.html)
- [PyTest](https://docs.pytest.org/)

## Contact

For any questions or inquiries, please contact [email@example.com](mailto:email@example.com).

---

Please make sure to update the repository URL, application name, authors, and any other relevant information specific to your project.

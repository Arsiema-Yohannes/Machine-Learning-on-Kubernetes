# Machine Learning on Kubernetes


## 1. Train the ML Model:
Train a simple logistic regression or random forest model, focusing on deployment rather than model accuracy.

## 2. Save and Export the ML Model:
Save the trained model using pickle or joblib to reuse it later during predictions.

## 3. Create a Flask App Including the UI Layer:
Develop a Flask application along with Flasgger to handle the UI part of the app, making it intuitive to consume the results.

## 4. Build a Custom Docker Image for the App:
Base Image Selection: Start by specifying the base image. In this case, we'll use the Python 3.8 slim image from Docker Hub.

Working Directory Setup: Set the working directory inside the container to /app. This ensures that subsequent commands are executed within the /app directory.

File Copying: Copy all contents from the current directory into the container's /app directory. This ensures that all necessary files, including the Flask application code and requirements.txt, are available inside the container.

Port Exposition: Expose port 5000 to the outside world. This allows external connections to interact with the Flask application running inside the container.

Dependency Installation: Install the dependencies specified in requirements.txt using pip install -r requirements.txt. This step ensures that all required Python packages are installed within the Docker environment.

Startup Command Specification: Set the startup command to run the Flask application (flask_api.py). This command will be executed when the Docker container is launched, initiating the Flask server and making the application accessible.

## 5. Run the App Using a Docker Container:
Build the Docker custom image using the Dockerfile: docker build -t ml_app_docker .
Initiate the container to run the ML app: docker container run -p 5000:5000 ml_app_docker

## 6. Stop the Container:
After running the application, stop the running container using docker stop or docker kill.
List running containers: docker ps
Stop the container by its ID: docker kill <Container_ID>

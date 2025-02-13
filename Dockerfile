# Use the official Python 3.11 image
FROM python:3.11
 
# Set the working directory to /app
WORKDIR /app
 
# Copy the current directory contents into the container at /app
COPY ./requirements.txt /app/requirements.txt
 
# Install requirements.txt 
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
# Install gradio
RUN pip install gradio
 
# Set up a new user named "user" with user ID 1000
RUN useradd -m -u 1000 user
# Switch to the "user" user
USER user
# Set home to the user's home directory
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH
 
# Set the working directory to the user's home directory
WORKDIR $HOME/app
 
# Copy the current directory contents into the container at $HOME/app setting the owner to the user
COPY --chown=user . $HOME/app
 
# Start the Gradio app on port 7860, the default port expected by HuggingFace Spaces
EXPOSE 7860
# Set the GRADIO_SERVER_NAME environment variable to ensure Gradio listens on all network interfaces.
ENV GRADIO_SERVER_NAME="0.0.0.0"

# Run the app
CMD ["python", "App/drug_app.py"]
# First-flask-app

This is my first dockerized Flask app! :)

In **requirements.txt** I specified the Flask version I want to use.

I've created a **Dockerfile** with following steps:
1. Adding requirements to the container
2. Install those requirements
3. Copying everything else
- In case I have to build image once again, I'll start with layer that has changed
- If everything stays the same in requirements, this layer will not be build again (this way we are saving a lot of building time)
4. Actually, it's copying everything except the things you put in **.dockerignore** file
5. Running my python app

In **app.py** I simply run Flask app

Commands I used for building image and getting files to the Github are in **commands.txt**

You can see printed text in browser http://0.0.0.0:5000/

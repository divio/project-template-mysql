# <DOCKER_FROM>  # Warning: text inside the DOCKER_FROM tags is auto-generated. Manual changes will be overwritten.
FROM aldryn/base-project:3.0.0-beta.3
# </DOCKER_FROM>

# <DOCKER_BUILD>  # Warning: text inside the DOCKER_BUILD tags is auto-generated. Manual changes will be overwritten.

# python requirements
# -------------------
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# add full sourcecode and collectstatic
# -------------------------------------
COPY . /app
RUN DJANGO_MODE=build python manage.py collectstatic --noinput --link

# </DOCKER_BUILD>


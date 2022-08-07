# create virtual environment
# download dependencies
FROM pachyderm/python-build:1.13.4 as build
WORKDIR /usr/app

RUN python -m venv /usr/app/venv
ENV PATH="/usr/app/venv/bin:$PATH"

COPY requirements.txt .
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

# copy code and dependencies
# run main.py
FROM pachyderm/python-build:1.13.4
WORKDIR /usr/app
COPY --from=build /usr/app/venv ./venv
COPY src .

ENV PATH="/usr/app/venv/bin:$PATH"
CMD [ "python", "main.py" ]
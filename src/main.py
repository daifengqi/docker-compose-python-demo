import os

def writeRelatively(path: str, content: str):
    absolutePath = os.path.join(os.path.dirname(__file__), path)
    with open(absolutePath, 'w') as f:
        f.write(content)

if __name__ == "__main__":
    writeRelatively('data/test.txt', 'Hello Github Action!')
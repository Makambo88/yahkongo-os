import hashlib
import time
from pathlib import Path

WATCH_DIR = Path.home() / "Documents"

def hash_file(filepath):
    try:
        with open(filepath, "rb") as f:
            return hashlib.sha256(f.read()).hexdigest()
    except (PermissionError, FileNotFoundError):
        return None

def scan():
    print(f"[SCOUT YAHKONGO] Surveillance de {WATCH_DIR}")
    known = set()
    
    while True:
        for f in WATCH_DIR.rglob("*"):
            if f.is_file() and f not in known:
                known.add(f)
                print(f"[OK] Nouveau fichier détecté : {f.name}")
        time.sleep(5)

if __name__ == "__main__":
    scan()

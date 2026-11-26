"""Rebuild each project's result table using Python and SQLite."""
import csv
import sqlite3
from pathlib import Path

root = Path(__file__).resolve().parent
for project in sorted((root / 'projects').iterdir()):
    with (project / 'data.csv').open(newline='') as source:
        reader = csv.reader(source)
        category, measure = next(reader)
        with sqlite3.connect(':memory:') as db:
            db.execute(f'CREATE TABLE observations ("{category}" TEXT, "{measure}" REAL)')
            db.executemany('INSERT INTO observations VALUES (?, ?)', reader)
            result = db.execute((project / 'analysis.sql').read_text())
            with (project / 'results.csv').open('w', newline='') as output:
                writer = csv.writer(output, lineterminator='\n')
                writer.writerow([column[0] for column in result.description])
                writer.writerows(result)

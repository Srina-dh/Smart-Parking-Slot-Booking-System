import sqlite3

conn = sqlite3.connect('slot_booking.db')
cursor = conn.cursor()

with open('schema.sql', 'r') as f:
    cursor.executescript(f.read())

conn.commit()
conn.close()

print("Database and tables created successfully!")
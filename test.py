import sqlite3

def check_vehicle_number_in_database(vehicle_number):
    conn = sqlite3.connect('slot_booking.db')
    cursor = conn.cursor()

    cursor.execute('SELECT * FROM bookings WHERE vehicle_number = ?', (vehicle_number,))
    result = cursor.fetchone()

    if result:
        print(f"Vehicle number '{vehicle_number}' exists in the database.")
        print("Details:", result)
    else:
        print(f"Vehicle number '{vehicle_number}' does not exist in the database.")

    cursor.close()
    conn.close()

if __name__ == "__main__":
    vehicle_number = "COVID19"

    check_vehicle_number_in_database(vehicle_number)
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id TEXT UNIQUE NOT NULL,
    name TEXT NOT NULL,
    phnumber TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS bookings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    slot_id INTEGER NOT NULL,
    date TEXT NOT NULL,
    in_time TEXT NOT NULL,
    out_time TEXT NOT NULL,
    vehicle_number TEXT NOT NULL,
    mobile_number TEXT NOT NULL,  -- Added Mobile Number Field
    status TEXT DEFAULT 'available', -- 'available' or 'booked'
    FOREIGN KEY (user_id) REFERENCES users (id)
);
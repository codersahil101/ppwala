-- MYSQL code for database table creation for inventory items 
-- which is stored in Decimal format of 10.000, here units are not saved
CREATE TABLE inventory_item(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    bl5 DECIMAL(10,3),
    bl6 DECIMAL(10,3),
    bl7 DECIMAL(10,3),
    bl9 DECIMAL(10,3),
    sp5 DECIMAL(10,3),
    sp6 DECIMAL(10,3),
    sp7 DECIMAL(10,3),
    sp9 DECIMAL(10,3),
    wl5 DECIMAL(10,3),
    wl6 DECIMAL(10,3),
    wl7 DECIMAL(10,3),
    wl9 DECIMAL(10,3),
    ld8 DECIMAL(10,3),
    ld9 DECIMAL(10,3),
    ld11 DECIMAL(10,3),
    dld DECIMAL(10,3),
    pp DECIMAL(10,3),
    cups50 DECIMAL(10,3),
    cups60 DECIMAL(10,3),
    cups80 DECIMAL(10,3),
    cups100 DECIMAL(10,3),
    cups150 DECIMAL(10,3),
    cups210 DECIMAL(10,3),
    cups250 DECIMAL(10,3),
    bd5 DECIMAL(10,3),
    bd6 DECIMAL(10,3),
    bd7 DECIMAL(10,3),
    cp5 DECIMAL(10,3),
    cp6 DECIMAL(10,3),
    cp7 DECIMAL(10,3),
    cp9 DECIMAL(10,3),
);

-- MYSQL code for database table creation for inventory units 
-- which is stored in Varchar format of 10, here units are saved.
-- some units i gave are 'Kg' and 'g'. these are stored seperately from the items.

CREATE TABLE inventory_unit(
    id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT,
    bl5_unit VARCHAR(10),
    bl6_unit VARCHAR(10),
    bl7_unit VARCHAR(10),
    bl9_unit VARCHAR(10),
    sp5_unit VARCHAR(10),
    sp6_unit VARCHAR(10),
    sp7_unit VARCHAR(10),
    sp9_unit VARCHAR(10),
    wl5_unit VARCHAR(10),
    wl6_unit VARCHAR(10),
    wl7_unit VARCHAR(10),
    wl9_unit VARCHAR(10),
    ld8_unit VARCHAR(10),
    ld9_unit VARCHAR(10),
    ld11_unit VARCHAR(10),
    dld_unit VARCHAR(10),
    pp_unit VARCHAR(10),
    cups50_unit VARCHAR(10),
    cups60_unit VARCHAR(10),
    cups80_unit VARCHAR(10),
    cups100_unit VARCHAR(10),
    cups150_unit VARCHAR(10),
    cups210_unit VARCHAR(10),
    cups250_unit VARCHAR(10),
    bd5_unit VARCHAR(10),
    bd6_unit VARCHAR(10),
    bd7_unit VARCHAR(10),
    cp5_unit VARCHAR(10),
    cp6_unit VARCHAR(10),
    cp7_unit VARCHAR(10),
    cp9_unit VARCHAR(10),
    FOREIGN KEY (item_id) REFERENCES inventory_items(id)
);

--Mysql code for sales item
CREATE TABLE sales_item(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    bl5 DECIMAL(10,3),
    bl6 DECIMAL(10,3),
    bl7 DECIMAL(10,3),
    bl9 DECIMAL(10,3),
    sp5 DECIMAL(10,3),
    sp6 DECIMAL(10,3),
    sp7 DECIMAL(10,3),
    sp9 DECIMAL(10,3),
    wl5 DECIMAL(10,3),
    wl6 DECIMAL(10,3),
    wl7 DECIMAL(10,3),
    wl9 DECIMAL(10,3),
    ld8 DECIMAL(10,3),
    ld9 DECIMAL(10,3),
    ld11 DECIMAL(10,3),
    dld DECIMAL(10,3),
    pp DECIMAL(10,3),
    cups50 DECIMAL(10,3),
    cups60 DECIMAL(10,3),
    cups80 DECIMAL(10,3),
    cups100 DECIMAL(10,3),
    cups150 DECIMAL(10,3),
    cups210 DECIMAL(10,3),
    cups250 DECIMAL(10,3),
    bd5 DECIMAL(10,3),
    bd6 DECIMAL(10,3),
    bd7 DECIMAL(10,3),
    cp5 DECIMAL(10,3),
    cp6 DECIMAL(10,3),
    cp7 DECIMAL(10,3),
    cp9 DECIMAL(10,3)
);

--Mysql code for sales unit

CREATE TABLE sales_unit(
    id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT,
    bl5_unit VARCHAR(10),
    bl6_unit VARCHAR(10),
    bl7_unit VARCHAR(10),
    bl9_unit VARCHAR(10),
    sp5_unit VARCHAR(10),
    sp6_unit VARCHAR(10),
    sp7_unit VARCHAR(10),
    sp9_unit VARCHAR(10),
    wl5_unit VARCHAR(10),
    wl6_unit VARCHAR(10),
    wl7_unit VARCHAR(10),
    wl9_unit VARCHAR(10),
    ld8_unit VARCHAR(10),
    ld9_unit VARCHAR(10),
    ld11_unit VARCHAR(10),
    dld_unit VARCHAR(10),
    pp_unit VARCHAR(10),
    cups50_unit VARCHAR(10),
    cups60_unit VARCHAR(10),
    cups80_unit VARCHAR(10),
    cups100_unit VARCHAR(10),
    cups150_unit VARCHAR(10),
    cups210_unit VARCHAR(10),
    cups250_unit VARCHAR(10),
    bd5_unit VARCHAR(10),
    bd6_unit VARCHAR(10),
    bd7_unit VARCHAR(10),
    cp5_unit VARCHAR(10),
    cp6_unit VARCHAR(10),
    cp7_unit VARCHAR(10),
    cp9_unit VARCHAR(10),
    FOREIGN KEY (item_id) REFERENCES sales_item(id)
);


CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    otp VARCHAR(6),
    verification_status INT DEFAULT 0,
    tokenn VARCHAR(255)
);

-- database code for stock table

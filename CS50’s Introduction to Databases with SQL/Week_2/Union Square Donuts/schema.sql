CREATE TABLE Ingredients(
    "id" INTEGER,
    "name" TEXT,
    "price_per_unit" REAL,
    "unit" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE Donuts(
    "id" INTEGER,
    "name" TEXT,
    "is_gluten_free" BOOLEAN,
    "price" REAL,
    PRIMARY KEY ("id")
);
CREATE TABLE DonutIngredients(
    "donut_id" INTEGER,
    "ingredients_id" INTEGER,
    PRIMARY KEY ("donut_id","ingredients_id"),
    FOREIGN KEY ("donut_id") REFERENCES Donuts("id"),
    FOREIGN KEY ("ingredients_id") REFERENCES Ingredients("id")
);
CREATE TABLE Orders(
    "id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY("id")

);
CREATE TABLE OrderDonuts(
    "order_id" INTEGER,
    "donut_id" INTEGER,
    "quantity" INTEGER,
    PRIMARY KEY ("order_id","donut_id"),
    FOREIGN KEY ("donut_id") REFERENCES Donuts("id"),
    FOREIGN KEY ("order_id") REFERENCES Orders("id")
);
CREATE TABLE Customers(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("id") REFERENCES Orders("customer_id")
);

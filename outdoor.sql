Drop Table if Exists Equipment Cascade;
create Table Equipment(--To include Clothing or to not
    equipId SERIAL PRIMARY key, --Int GENERATED ALWAYS AS identity,
    equipName VarChar(255) not null,
    price float,
    isFood Boolean
);

Drop Table if Exists Trip Cascade;
Create Table Trip(
    tripId Serial PRIMARY KEY, 
    userId Int not null, --Person Whom trip belongs to
    tripName VarChar(255) not null
);

Drop Table if Exists EquipmentTrip;
Create table EquipmentTrip( 
    tripId int references Trip(tripId),
    equipId int references equipment(equipId),
    quantity int
);

select * from equipmenttrip e;

Select eq.equipname, eq.price, et.quantity, eq.equipid 
from equipmentTrip et 
INNER JOIN equipment eq 
ON et.equipId = eq.equipId 
where et.tripId = (1) AND eq.isFood = false;

select * from equipment where isfood = (true);

Drop Table if Exists users;
Create Table users(
	userId SERIAL PRIMARY KEY ,
	username varchar(255),
	salt bytea,
	password bytea,
    special Boolean --Whether or not user is admin
);

INSERT INTO Equipment 
(equipname, price, isfood)
VALUES
('cheddar cheese', 5.99, true),
('popcorn', 1.99, true),
('Ritz crackers', 1.99, true),
('flat bread', 1.99, true),
('tortilla', 1.99, true),
('tomato', 1.99, true),
('carrot', 1.99, true),
('hummus', 1.99, true),
('sour cream', 1.99, true),
('peanut butter', 1.99, true),
('rice', 1.99, true),
('honey', 1.99, true),
('wheat crackers', 1.99, true),
('Triscuits', 1.99, true),
('Mac and cheese', 1.99, true),
('butter packs', 1.99, true),
('Backpackers Pantry Potatoes & Gravy with Beef - 2 count pouch', 9.99, true),
('Potato Soup', 1.85, true),
('Rice Sides- Brocoli and Cheese', 1.00, true),
('tent', 1.99, false),
('sleeping bag', 1.99, false),
('water filter', 1.99, false),
('knife', 1.99, false),
('pot', 1.99, false),
('clothing', 3.99, false);

select * from users;
select * from trip t;
Select * from trip where userid = 1;
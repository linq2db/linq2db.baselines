BeforeExecute
-- SQLite.Classic SQLite

create table Customer
					(
						ID int not null primary key,
						Name nvarchar(30) not null
					)

BeforeExecute
-- SQLite.Classic SQLite

create table Purchase
					(
						ID int not null primary key,
						CustomerID int null references Customer (ID),
						Date datetime not null,
						Description varchar(30) not null,
						Price decimal not null
					)

BeforeExecute
-- SQLite.Classic SQLite

create table PurchaseItem
					(
						ID int not null primary key,
						PurchaseID int not null references Purchase (ID),
						Detail varchar(30) not null,
						Price decimal not null
					)


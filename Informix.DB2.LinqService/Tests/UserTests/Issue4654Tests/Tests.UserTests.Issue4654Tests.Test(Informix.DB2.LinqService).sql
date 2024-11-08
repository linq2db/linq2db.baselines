BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4654Customer

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4654Customer
(
	Id   SERIAL         NOT NULL,
	Name NVarChar(255)      NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4654Order

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4654Order
(
	Id          SERIAL         NOT NULL,
	ProductName NVarChar(255)      NULL,
	Quantity    Int            NOT NULL,
	CustomerId  Int            NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4654Product

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4654Product
(
	Id    SERIAL         NOT NULL,
	Name  NVarChar(255)      NULL,
	Price Decimal        NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Char(c_1.Id),
	c_1.Name
FROM
	Issue4654Customer c_1
UNION
SELECT
	To_Char(o.Id),
	o.ProductName
FROM
	Issue4654Order o
UNION
SELECT
	To_Char(p.Id),
	p.Name
FROM
	Issue4654Product p

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4654Product

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4654Order

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4654Customer


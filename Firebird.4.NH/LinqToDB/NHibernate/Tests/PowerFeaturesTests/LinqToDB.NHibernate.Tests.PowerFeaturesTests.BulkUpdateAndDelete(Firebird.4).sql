-- Firebird.4 Firebird4
DELETE FROM
	l2dbnh_customers c_1
WHERE
	c_1.customerid STARTING WITH 'PWR'


INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);@p0 = 'A' [Type: String (1:0:0)], @p1 = NULL [Type: String (0:0:0)], @p2 = NULL [Type: String (0:0:0)], @p3 = NULL [Type: String (0:0:0)], @p4 = 'Old' [Type: String (3:0:0)], @p5 = NULL [Type: String (0:0:0)], @p6 = NULL [Type: String (0:0:0)], @p7 = 'Demoland' [Type: String (8:0:0)], @p8 = NULL [Type: String (0:0:0)], @p9 = NULL [Type: String (0:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'PWR1' [Type: String (4:0:0)]

INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);@p0 = 'B' [Type: String (1:0:0)], @p1 = NULL [Type: String (0:0:0)], @p2 = NULL [Type: String (0:0:0)], @p3 = NULL [Type: String (0:0:0)], @p4 = 'Old' [Type: String (3:0:0)], @p5 = NULL [Type: String (0:0:0)], @p6 = NULL [Type: String (0:0:0)], @p7 = 'Demoland' [Type: String (8:0:0)], @p8 = NULL [Type: String (0:0:0)], @p9 = NULL [Type: String (0:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'PWR2' [Type: String (4:0:0)]

INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);@p0 = 'C' [Type: String (1:0:0)], @p1 = NULL [Type: String (0:0:0)], @p2 = NULL [Type: String (0:0:0)], @p3 = NULL [Type: String (0:0:0)], @p4 = 'Old' [Type: String (3:0:0)], @p5 = NULL [Type: String (0:0:0)], @p6 = NULL [Type: String (0:0:0)], @p7 = 'Elsewhere' [Type: String (9:0:0)], @p8 = NULL [Type: String (0:0:0)], @p9 = NULL [Type: String (0:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'PWR3' [Type: String (4:0:0)]

-- Firebird.4 Firebird4
DECLARE @City VarChar(3) -- String
SET     @City = 'New'

UPDATE
	l2dbnh_customers c_1
SET
	city = CAST(@City AS VARCHAR(3))
WHERE
	c_1.country = 'Demoland'


-- Firebird.4 Firebird4
SELECT
	COUNT(*)
FROM
	l2dbnh_customers c_1
WHERE
	c_1.city = 'New'


-- Firebird.4 Firebird4
DELETE FROM
	l2dbnh_customers c_1
WHERE
	c_1.customerid STARTING WITH 'PWR'


-- Firebird.4 Firebird4
SELECT
	COUNT(*)
FROM
	l2dbnh_customers c_1
WHERE
	c_1.customerid STARTING WITH 'PWR'



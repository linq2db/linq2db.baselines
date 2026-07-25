-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_customers c_1
WHERE
	c_1.customerid LIKE N'PWR%' ESCAPE '~'


INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (:p0, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11);:p0 = 'A' [Type: String (0:0:0)], :p1 = NULL [Type: String (0:0:0)], :p2 = NULL [Type: String (0:0:0)], :p3 = NULL [Type: String (0:0:0)], :p4 = 'Old' [Type: String (0:0:0)], :p5 = NULL [Type: String (0:0:0)], :p6 = NULL [Type: String (0:0:0)], :p7 = 'Demoland' [Type: String (0:0:0)], :p8 = NULL [Type: String (0:0:0)], :p9 = NULL [Type: String (0:0:0)], :p10 = False [Type: Int16 (0:0:0)], :p11 = 'PWR1' [Type: String (0:0:0)]

INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (:p0, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11);:p0 = 'B' [Type: String (0:0:0)], :p1 = NULL [Type: String (0:0:0)], :p2 = NULL [Type: String (0:0:0)], :p3 = NULL [Type: String (0:0:0)], :p4 = 'Old' [Type: String (0:0:0)], :p5 = NULL [Type: String (0:0:0)], :p6 = NULL [Type: String (0:0:0)], :p7 = 'Demoland' [Type: String (0:0:0)], :p8 = NULL [Type: String (0:0:0)], :p9 = NULL [Type: String (0:0:0)], :p10 = False [Type: Int16 (0:0:0)], :p11 = 'PWR2' [Type: String (0:0:0)]

INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (:p0, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11);:p0 = 'C' [Type: String (0:0:0)], :p1 = NULL [Type: String (0:0:0)], :p2 = NULL [Type: String (0:0:0)], :p3 = NULL [Type: String (0:0:0)], :p4 = 'Old' [Type: String (0:0:0)], :p5 = NULL [Type: String (0:0:0)], :p6 = NULL [Type: String (0:0:0)], :p7 = 'Elsewhere' [Type: String (0:0:0)], :p8 = NULL [Type: String (0:0:0)], :p9 = NULL [Type: String (0:0:0)], :p10 = False [Type: Int16 (0:0:0)], :p11 = 'PWR3' [Type: String (0:0:0)]

-- Oracle.Managed Oracle12
DECLARE @City NVarchar2(3) -- String
SET     @City = 'New'

UPDATE
	l2dbnh_customers c_1
SET
	city = :City
WHERE
	c_1.country = N'Demoland'


-- Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	l2dbnh_customers c_1
WHERE
	c_1.city = N'New'


-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_customers c_1
WHERE
	c_1.customerid LIKE N'PWR%' ESCAPE '~'


-- Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	l2dbnh_customers c_1
WHERE
	c_1.customerid LIKE N'PWR%' ESCAPE '~'



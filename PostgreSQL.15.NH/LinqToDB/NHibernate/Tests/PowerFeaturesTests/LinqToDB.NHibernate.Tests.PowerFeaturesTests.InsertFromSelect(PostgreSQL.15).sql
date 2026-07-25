-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	l2dbnh_customers c_1
WHERE
	c_1.country = 'Src' OR c_1.country = 'Copy'


INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (:p0, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11);:p0 = 'A' [Type: String (0:0:0)], :p1 = NULL [Type: String (0:0:0)], :p2 = NULL [Type: String (0:0:0)], :p3 = NULL [Type: String (0:0:0)], :p4 = NULL [Type: String (0:0:0)], :p5 = NULL [Type: String (0:0:0)], :p6 = NULL [Type: String (0:0:0)], :p7 = 'Src' [Type: String (0:0:0)], :p8 = NULL [Type: String (0:0:0)], :p9 = NULL [Type: String (0:0:0)], :p10 = False [Type: Boolean (0:0:0)], :p11 = 'IFS1' [Type: String (0:0:0)]

INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (:p0, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11);:p0 = 'B' [Type: String (0:0:0)], :p1 = NULL [Type: String (0:0:0)], :p2 = NULL [Type: String (0:0:0)], :p3 = NULL [Type: String (0:0:0)], :p4 = NULL [Type: String (0:0:0)], :p5 = NULL [Type: String (0:0:0)], :p6 = NULL [Type: String (0:0:0)], :p7 = 'Src' [Type: String (0:0:0)], :p8 = NULL [Type: String (0:0:0)], :p9 = NULL [Type: String (0:0:0)], :p10 = False [Type: Boolean (0:0:0)], :p11 = 'IFS2' [Type: String (0:0:0)]

-- PostgreSQL.9.3 PostgreSQL
INSERT INTO l2dbnh_customers
(
	customerid,
	companyname,
	country,
	isdeleted
)
SELECT
	'C' || c_1.customerid,
	c_1.companyname,
	'Copy',
	c_1.isdeleted
FROM
	l2dbnh_customers c_1
WHERE
	c_1.country = 'Src'


-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	l2dbnh_customers c_1
WHERE
	c_1.country = 'Copy'


-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	l2dbnh_customers c_1
WHERE
	c_1.country = 'Src' OR c_1.country = 'Copy'



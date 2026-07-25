-- SqlServer.2008
DELETE [c_1]
FROM
	[l2dbnh_customers] [c_1]
WHERE
	[c_1].[customerid] LIKE N'PWR%' ESCAPE N'~'


Batch commands:
command 0:INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);@p0 = 'A' [Type: String (4000:0:0)], @p1 = NULL [Type: String (4000:0:0)], @p2 = NULL [Type: String (4000:0:0)], @p3 = NULL [Type: String (4000:0:0)], @p4 = 'Old' [Type: String (4000:0:0)], @p5 = NULL [Type: String (4000:0:0)], @p6 = NULL [Type: String (4000:0:0)], @p7 = 'Demoland' [Type: String (4000:0:0)], @p8 = NULL [Type: String (4000:0:0)], @p9 = NULL [Type: String (4000:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'PWR1' [Type: String (4000:0:0)]
command 1:INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);@p0 = 'B' [Type: String (4000:0:0)], @p1 = NULL [Type: String (4000:0:0)], @p2 = NULL [Type: String (4000:0:0)], @p3 = NULL [Type: String (4000:0:0)], @p4 = 'Old' [Type: String (4000:0:0)], @p5 = NULL [Type: String (4000:0:0)], @p6 = NULL [Type: String (4000:0:0)], @p7 = 'Demoland' [Type: String (4000:0:0)], @p8 = NULL [Type: String (4000:0:0)], @p9 = NULL [Type: String (4000:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'PWR2' [Type: String (4000:0:0)]
command 2:INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);@p0 = 'C' [Type: String (4000:0:0)], @p1 = NULL [Type: String (4000:0:0)], @p2 = NULL [Type: String (4000:0:0)], @p3 = NULL [Type: String (4000:0:0)], @p4 = 'Old' [Type: String (4000:0:0)], @p5 = NULL [Type: String (4000:0:0)], @p6 = NULL [Type: String (4000:0:0)], @p7 = 'Elsewhere' [Type: String (4000:0:0)], @p8 = NULL [Type: String (4000:0:0)], @p9 = NULL [Type: String (4000:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'PWR3' [Type: String (4000:0:0)]


-- SqlServer.2008
DECLARE @City NVarChar(4000) -- String
SET     @City = N'New'

UPDATE
	[l2dbnh_customers]
SET
	[city] = @City
WHERE
	[l2dbnh_customers].[country] = N'Demoland'


-- SqlServer.2008
SELECT
	COUNT(*)
FROM
	[l2dbnh_customers] [c_1]
WHERE
	[c_1].[city] = N'New'


-- SqlServer.2008
DELETE [c_1]
FROM
	[l2dbnh_customers] [c_1]
WHERE
	[c_1].[customerid] LIKE N'PWR%' ESCAPE N'~'


-- SqlServer.2008
SELECT
	COUNT(*)
FROM
	[l2dbnh_customers] [c_1]
WHERE
	[c_1].[customerid] LIKE N'PWR%' ESCAPE N'~'



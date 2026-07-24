-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_customers]
WHERE
	[l2dbnh_customers].[customerid] = 'DETCH'


INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);@p0 = 'Detached Co' [Type: String (0:0:0)], @p1 = NULL [Type: String (0:0:0)], @p2 = NULL [Type: String (0:0:0)], @p3 = NULL [Type: String (0:0:0)], @p4 = NULL [Type: String (0:0:0)], @p5 = NULL [Type: String (0:0:0)], @p6 = NULL [Type: String (0:0:0)], @p7 = NULL [Type: String (0:0:0)], @p8 = NULL [Type: String (0:0:0)], @p9 = NULL [Type: String (0:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'DETCH' [Type: String (0:0:0)]

-- SQLite.Classic SQLite
SELECT
	[c_1].[companyname]
FROM
	[l2dbnh_customers] [c_1]
WHERE
	[c_1].[customerid] = 'DETCH'
LIMIT 2



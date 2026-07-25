-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_customers]
WHERE
	[l2dbnh_customers].[country] = 'JoinLand'


-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_employees]
WHERE
	[l2dbnh_employees].[country] = 'JoinLand'


INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);@p0 = 'A' [Type: String (0:0:0)], @p1 = NULL [Type: String (0:0:0)], @p2 = NULL [Type: String (0:0:0)], @p3 = NULL [Type: String (0:0:0)], @p4 = NULL [Type: String (0:0:0)], @p5 = NULL [Type: String (0:0:0)], @p6 = NULL [Type: String (0:0:0)], @p7 = 'JoinLand' [Type: String (0:0:0)], @p8 = NULL [Type: String (0:0:0)], @p9 = NULL [Type: String (0:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'JOIN1' [Type: String (0:0:0)]

INSERT INTO l2dbnh_employees (reportsto, lastname, firstname, title, titleofcourtesy, birthdate, hiredate, address, city, region, postalcode, country, homephone, extension, photo, notes, photopath, isdeleted) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11, @p12, @p13, @p14, @p15, @p16, @p17); select last_insert_rowid();@p0 = NULL [Type: Int32 (0:0:0)], @p1 = 'Smith' [Type: String (0:0:0)], @p2 = 'Joe' [Type: String (0:0:0)], @p3 = NULL [Type: String (0:0:0)], @p4 = NULL [Type: String (0:0:0)], @p5 = NULL [Type: DateTime (0:0:0)], @p6 = NULL [Type: DateTime (0:0:0)], @p7 = NULL [Type: String (0:0:0)], @p8 = NULL [Type: String (0:0:0)], @p9 = NULL [Type: String (0:0:0)], @p10 = NULL [Type: String (0:0:0)], @p11 = 'JoinLand' [Type: String (0:0:0)], @p12 = NULL [Type: String (0:0:0)], @p13 = NULL [Type: String (0:0:0)], @p14 = NULL [Type: Binary (0:0:0)], @p15 = NULL [Type: String (0:0:0)], @p16 = NULL [Type: String (0:0:0)], @p17 = False [Type: Boolean (0:0:0)]

-- SQLite.Classic SQLite
SELECT
	[c_1].[customerid],
	[e].[lastname]
FROM
	[l2dbnh_customers] [c_1]
		INNER JOIN [l2dbnh_employees] [e] ON [c_1].[country] = [e].[country]
WHERE
	[c_1].[country] = 'JoinLand'


-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_customers]
WHERE
	[l2dbnh_customers].[country] = 'JoinLand'


-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_employees]
WHERE
	[l2dbnh_employees].[country] = 'JoinLand'



INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);@p0 = 'Alfreds Futterkiste' [Type: String (0:0:0)], @p1 = NULL [Type: String (0:0:0)], @p2 = NULL [Type: String (0:0:0)], @p3 = NULL [Type: String (0:0:0)], @p4 = NULL [Type: String (0:0:0)], @p5 = NULL [Type: String (0:0:0)], @p6 = NULL [Type: String (0:0:0)], @p7 = NULL [Type: String (0:0:0)], @p8 = NULL [Type: String (0:0:0)], @p9 = NULL [Type: String (0:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'ALFKI' [Type: String (0:0:0)]

-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_widget]


-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_gadget]


INSERT INTO l2dbnh_gadget (name, gadgetid) VALUES (@p0, @p1);@p0 = 'G100' [Type: String (0:0:0)], @p1 = 100 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_gadget (name, gadgetid) VALUES (@p0, @p1);@p0 = 'G1-decoy' [Type: String (0:0:0)], @p1 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_widget (name, gadgetid, widgetid) VALUES (@p0, @p1, @p2);@p0 = 'W1' [Type: String (0:0:0)], @p1 = 100 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

-- SQLite.Classic SQLite
SELECT
	[a_Gadget].[name]
FROM
	[l2dbnh_widget] [w]
		LEFT JOIN [l2dbnh_gadget] [a_Gadget] ON [w].[gadgetid] = [a_Gadget].[gadgetid]
WHERE
	[w].[widgetid] = 1
LIMIT 1


select gadget1_.name as col_0_0_ from l2dbnh_widget widget0_ left outer join l2dbnh_gadget gadget1_ on widget0_.gadgetid=gadget1_.gadgetid where widget0_.widgetid=@p0 limit 1;@p0 = 1 [Type: Int32 (0:0:0)]

-- SQLite.Classic SQLite
SELECT
	[w].[name]
FROM
	[l2dbnh_widget] [w]
		INNER JOIN [l2dbnh_gadget] [a_Gadget] ON [w].[gadgetid] = [a_Gadget].[gadgetid]
WHERE
	[a_Gadget].[name] = 'G100'



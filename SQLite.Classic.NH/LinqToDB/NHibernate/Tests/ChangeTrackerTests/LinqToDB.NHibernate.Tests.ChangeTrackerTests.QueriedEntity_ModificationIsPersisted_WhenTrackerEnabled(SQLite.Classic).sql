-- SQLite.Classic SQLite
DECLARE @id NVarChar(5) -- String
SET     @id = 'CTPOS'

DELETE FROM
	[l2dbnh_customers]
WHERE
	[l2dbnh_customers].[customerid] = @id


INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);@p0 = 'Original Co' [Type: String (0:0:0)], @p1 = NULL [Type: String (0:0:0)], @p2 = NULL [Type: String (0:0:0)], @p3 = NULL [Type: String (0:0:0)], @p4 = NULL [Type: String (0:0:0)], @p5 = NULL [Type: String (0:0:0)], @p6 = NULL [Type: String (0:0:0)], @p7 = NULL [Type: String (0:0:0)], @p8 = NULL [Type: String (0:0:0)], @p9 = NULL [Type: String (0:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'CTPOS' [Type: String (0:0:0)]

-- SQLite.Classic SQLite
SELECT
	[c_1].[isdeleted],
	[c_1].[customerid],
	[c_1].[companyname],
	[c_1].[contactname],
	[c_1].[contacttitle],
	[c_1].[address],
	[c_1].[city],
	[c_1].[region],
	[c_1].[postalcode],
	[c_1].[country],
	[c_1].[phone],
	[c_1].[fax]
FROM
	[l2dbnh_customers] [c_1]
WHERE
	[c_1].[customerid] = 'CTPOS'
LIMIT 1


UPDATE l2dbnh_customers SET companyname = @p0, contactname = @p1, contacttitle = @p2, address = @p3, city = @p4, region = @p5, postalcode = @p6, country = @p7, phone = @p8, fax = @p9, isdeleted = @p10 WHERE customerid = @p11;@p0 = 'Tracked Change' [Type: String (0:0:0)], @p1 = NULL [Type: String (0:0:0)], @p2 = NULL [Type: String (0:0:0)], @p3 = NULL [Type: String (0:0:0)], @p4 = NULL [Type: String (0:0:0)], @p5 = NULL [Type: String (0:0:0)], @p6 = NULL [Type: String (0:0:0)], @p7 = NULL [Type: String (0:0:0)], @p8 = NULL [Type: String (0:0:0)], @p9 = NULL [Type: String (0:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'CTPOS' [Type: String (0:0:0)]

SELECT customer0_.customerid as customerid1_7_0_, customer0_.companyname as companyname2_7_0_, customer0_.contactname as contactname3_7_0_, customer0_.contacttitle as contacttitle4_7_0_, customer0_.address as address5_7_0_, customer0_.city as city6_7_0_, customer0_.region as region7_7_0_, customer0_.postalcode as postalcode8_7_0_, customer0_.country as country9_7_0_, customer0_.phone as phone10_7_0_, customer0_.fax as fax11_7_0_, customer0_.isdeleted as isdeleted12_7_0_ FROM l2dbnh_customers customer0_ WHERE customer0_.customerid=@p0;@p0 = 'CTPOS' [Type: String (0:0:0)]


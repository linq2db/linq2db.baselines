-- SQLite.Classic SQLite
DECLARE @id NVarChar(5) -- String
SET     @id = 'CTNEG'

DELETE FROM
	[l2dbnh_customers]
WHERE
	[l2dbnh_customers].[customerid] = @id


INSERT INTO l2dbnh_customers (companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, isdeleted, customerid) VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);@p0 = 'Original Co' [Type: String (0:0:0)], @p1 = NULL [Type: String (0:0:0)], @p2 = NULL [Type: String (0:0:0)], @p3 = NULL [Type: String (0:0:0)], @p4 = NULL [Type: String (0:0:0)], @p5 = NULL [Type: String (0:0:0)], @p6 = NULL [Type: String (0:0:0)], @p7 = NULL [Type: String (0:0:0)], @p8 = NULL [Type: String (0:0:0)], @p9 = NULL [Type: String (0:0:0)], @p10 = False [Type: Boolean (0:0:0)], @p11 = 'CTNEG' [Type: String (0:0:0)]

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
	[c_1].[customerid] = 'CTNEG'
LIMIT 1


SELECT customer0_.customerid as customerid1_3_0_, customer0_.companyname as companyname2_3_0_, customer0_.contactname as contactname3_3_0_, customer0_.contacttitle as contacttitle4_3_0_, customer0_.address as address5_3_0_, customer0_.city as city6_3_0_, customer0_.region as region7_3_0_, customer0_.postalcode as postalcode8_3_0_, customer0_.country as country9_3_0_, customer0_.phone as phone10_3_0_, customer0_.fax as fax11_3_0_, customer0_.isdeleted as isdeleted12_3_0_ FROM l2dbnh_customers customer0_ WHERE customer0_.customerid=@p0;@p0 = 'CTNEG' [Type: String (0:0:0)]


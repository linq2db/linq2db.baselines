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
	[c_1].[customerid] = 'ALFKI'
LIMIT 1



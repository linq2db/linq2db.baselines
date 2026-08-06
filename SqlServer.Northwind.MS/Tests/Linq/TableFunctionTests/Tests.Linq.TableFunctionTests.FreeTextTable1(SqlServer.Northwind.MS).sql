-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @term NVarChar(4000) -- String
SET     @term = N'sweetest candy bread and dry meat'

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN FREETEXTTABLE([Categories], ([Description]), @term) [t] ON [c_1].[CategoryID] = [t].[KEY]


BeforeExecute
-- Northwind SqlServer.2017
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'sweetest candy bread and dry meat'

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	FREETEXTTABLE([Categories], ([Description]), @p_1) [t]
		INNER JOIN [Categories] [c_1] ON [t].[KEY] = [c_1].[CategoryID]


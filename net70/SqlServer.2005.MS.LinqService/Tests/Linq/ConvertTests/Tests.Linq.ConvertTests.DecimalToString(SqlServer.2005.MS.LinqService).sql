BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Convert(NVarChar(31), [t].[MoneyValue])
FROM
	[LinqDataTypes] [t]
WHERE
	LEN(REPLACE(Convert(NVarChar(31), [t].[MoneyValue]),' ','.')) > 0


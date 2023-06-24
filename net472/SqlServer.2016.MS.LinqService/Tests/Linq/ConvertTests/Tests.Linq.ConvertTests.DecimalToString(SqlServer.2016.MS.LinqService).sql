BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Convert(NVarChar(31), [t].[MoneyValue])
FROM
	[LinqDataTypes] [t]
WHERE
	LEN(REPLACE(Convert(NVarChar(31), [t].[MoneyValue]),' ','.')) > 0


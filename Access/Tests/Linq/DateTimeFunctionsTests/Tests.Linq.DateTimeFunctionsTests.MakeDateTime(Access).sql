BeforeExecute
-- Access AccessOleDb

SELECT
	[t_1].[ID]
FROM
	(
		SELECT
			DatePart('yyyy', DateSerial(2010, [t].[ID], 1)) as [Year_1],
			[t].[ID]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010


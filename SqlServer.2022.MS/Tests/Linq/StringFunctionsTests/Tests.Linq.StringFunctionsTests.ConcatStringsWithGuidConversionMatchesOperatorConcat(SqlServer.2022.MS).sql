-- SqlServer.2022.MS SqlServer.2022
SELECT
	IIF((N'GuidConcatRow/' + Lower(CAST([f].[firstField] AS Char(36))) + N'/' + Lower(CAST([f].[secondField] AS Char(36)))) = CONCAT_WS(N'/', N'GuidConcatRow', Lower(CAST([f].[firstField] AS Char(36))), Lower(CAST([f].[secondField] AS Char(36)))), 1, 0)
FROM
	[GuidConcatRow] [f]


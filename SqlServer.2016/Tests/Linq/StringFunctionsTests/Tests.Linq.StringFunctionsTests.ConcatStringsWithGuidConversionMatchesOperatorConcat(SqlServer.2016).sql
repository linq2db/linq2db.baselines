-- SqlServer.2016
SELECT
	IIF((N'GuidConcatRow/' + Lower(CAST([f].[firstField] AS Char(36))) + N'/' + Lower(CAST([f].[secondField] AS Char(36)))) = SUBSTRING(N'/GuidConcatRow/' + Lower(CAST([f].[firstField] AS Char(36))) + N'/' + Lower(CAST([f].[secondField] AS Char(36))), 2, 2147483647), 1, 0)
FROM
	[GuidConcatRow] [f]


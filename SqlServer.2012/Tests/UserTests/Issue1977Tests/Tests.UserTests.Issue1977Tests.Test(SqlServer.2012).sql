-- SqlServer.2012

SELECT
	IIF(N'Issue1977Table/' + Lower(CAST([f].[firstField] AS Char(36))) + N'/' + Lower(CAST([f].[secondField] AS Char(36))) = SUBSTRING(N'/Issue1977Table' + N'/' + Lower(CAST([f].[firstField] AS Char(36))) + N'/' + Lower(CAST([f].[secondField] AS Char(36))), 2, 2147483647), 1, 0)
FROM
	[Issue1977Table] [f]


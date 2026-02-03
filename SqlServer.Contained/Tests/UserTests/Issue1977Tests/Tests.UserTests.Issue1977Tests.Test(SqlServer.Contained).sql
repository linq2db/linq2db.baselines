-- SqlServer.Contained SqlServer.2019

SELECT
	IIF(N'Issue1977Table/' + Lower(CAST([f].[firstField] AS Char(36))) + N'/' + Lower(CAST([f].[secondField] AS Char(36))) = CONCAT_WS(N'/', N'Issue1977Table', Lower(CAST([f].[firstField] AS Char(36))), Lower(CAST([f].[secondField] AS Char(36)))), 1, 0)
FROM
	[Issue1977Table] [f]


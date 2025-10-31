BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	IIF(N'Issue1977Table/' + CAST([f].[firstField] AS NVarChar(36)) + N'/' + CAST([f].[secondField] AS NVarChar(36)) = SUBSTRING(N'/Issue1977Table' + N'/' + CAST([f].[firstField] AS NVarChar(36)) + N'/' + CAST([f].[secondField] AS NVarChar(36)), 2, 2147483647), 1, 0)
FROM
	[Issue1977Table] [f]


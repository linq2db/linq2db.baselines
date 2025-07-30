BeforeExecute
-- SqlServer.2014

SELECT
	IIF(N'Issue1977Table/' + CAST([f].[firstField] AS NVarChar(36)) + N'/' + CAST([f].[secondField] AS NVarChar(36)) = SUBSTRING(((ISNULL((N'/' + N'Issue1977Table'), '') + ISNULL((N'/' + CAST([f].[firstField] AS NVarChar(36))), '')) + ISNULL((N'/' + CAST([f].[secondField] AS NVarChar(36))), '')), LEN(CONVERT(NVARCHAR(MAX), N'/') + N'!'), 8000), 1, 0)
FROM
	[Issue1977Table] [f]


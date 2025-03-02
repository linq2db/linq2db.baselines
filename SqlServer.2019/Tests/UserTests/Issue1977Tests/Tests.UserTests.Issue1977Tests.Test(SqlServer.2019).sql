BeforeExecute
-- SqlServer.2019

SELECT
	IIF(N'Issue1977Table/' + CAST([f].[firstField] AS VarChar(36)) + N'/' + CAST([f].[secondField] AS VarChar(36)) = CONCAT_WS(N'/', N'Issue1977Table', CAST([f].[firstField] AS NVarChar(Max)), CAST([f].[secondField] AS NVarChar(Max))), 1, 0)
FROM
	[Issue1977Table] [f]


BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN N'Issue1977Table/' + CAST([f].[firstField] AS NVarChar(36)) + N'/' + CAST([f].[secondField] AS NVarChar(36)) = SUBSTRING(N'/Issue1977Table' + N'/' + CAST([f].[firstField] AS NVarChar(36)) + N'/' + CAST([f].[secondField] AS NVarChar(36)), 2, 2147483647)
			THEN 1
		ELSE 0
	END
FROM
	[Issue1977Table] [f]


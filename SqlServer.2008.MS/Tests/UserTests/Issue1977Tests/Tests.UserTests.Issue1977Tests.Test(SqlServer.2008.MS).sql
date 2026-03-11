-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN N'Issue1977Table/' + Lower(CAST([f].[firstField] AS Char(36))) + N'/' + Lower(CAST([f].[secondField] AS Char(36))) = SUBSTRING(N'/Issue1977Table' + N'/' + Lower(CAST([f].[firstField] AS Char(36))) + N'/' + Lower(CAST([f].[secondField] AS Char(36))), 2, 2147483647)
			THEN 1
		ELSE 0
	END
FROM
	[Issue1977Table] [f]


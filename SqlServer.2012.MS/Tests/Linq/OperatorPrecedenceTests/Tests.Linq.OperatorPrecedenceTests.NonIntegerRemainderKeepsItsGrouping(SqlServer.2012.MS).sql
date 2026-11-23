-- SqlServer.2012.MS SqlServer.2012
SELECT
	Convert(Int, CAST([r].[A] AS Float)) % ([r].[B] + [r].[C])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]


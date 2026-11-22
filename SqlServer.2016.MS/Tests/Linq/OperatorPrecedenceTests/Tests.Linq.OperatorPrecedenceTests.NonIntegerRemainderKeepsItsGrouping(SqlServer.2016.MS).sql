-- SqlServer.2016.MS SqlServer.2016
SELECT
	Convert(Int, CAST([r].[A] AS Float)) % ([r].[B] + [r].[C])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]


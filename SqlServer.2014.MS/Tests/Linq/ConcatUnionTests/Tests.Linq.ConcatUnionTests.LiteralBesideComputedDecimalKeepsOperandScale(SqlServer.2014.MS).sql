-- SqlServer.2014.MS SqlServer.2014
SELECT
	Abs([r].[Value])
FROM
	[FineDecimalRow] [r]
UNION ALL
SELECT
	CAST(1.000000000005 AS Decimal(13, 12))
FROM
	[FineDecimalRow] [r_1]


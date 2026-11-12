-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	Abs([r].[Value])
FROM
	[FineDecimalRow] [r]
UNION ALL
SELECT
	1.000000000005
FROM
	[FineDecimalRow] [r_1]


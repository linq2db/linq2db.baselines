-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	Fix([v].[Integer] / 33),
	[v].[Decimal] / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]


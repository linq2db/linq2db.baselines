-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CStr([c_1].[Id]),
	[c_1].[Name]
FROM
	[UnionSourceCustomer] [c_1]
UNION
SELECT
	CStr([o].[Id]),
	[o].[ProductName]
FROM
	[UnionSourceOrder] [o]
UNION
SELECT
	CStr([p].[Id]),
	[p].[Name]
FROM
	[UnionSourceProduct] [p]


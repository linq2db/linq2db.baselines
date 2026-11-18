-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[d].[Id]
FROM
	[Department] [d]
ORDER BY
	[d].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Value]
FROM
	(VALUES
		(101), (102), (103)
	) [k_1]([item])
		INNER JOIN [ConvA] [d] ON ([d].[DepartmentId] = [k_1].[item])
ORDER BY
	[d].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Value]
FROM
	(VALUES
		(101), (102), (103)
	) [k_1]([item])
		INNER JOIN [ConvB] [d] ON ([d].[DepartmentId] = [k_1].[item])
ORDER BY
	[d].[Id]


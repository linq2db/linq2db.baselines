-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[d].[Id],
	[d].[Name]
FROM
	[Department] [d]
ORDER BY
	[d].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Name],
	[d].[Salary]
FROM
	(VALUES
		(101), (102), (103), (201), (202), (203), (204), (301), (302), (303),
		(304), (305)
	) [k_1]([item])
		INNER JOIN [Employee] [d] ON ([d].[DepartmentId] = [k_1].[item] OR [d].[Salary] > 60000)
ORDER BY
	[d].[Id]


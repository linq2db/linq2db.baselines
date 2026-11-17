-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[d].[Id],
	[d].[CompanyId],
	[d].[Name]
FROM
	[Department] [d]
ORDER BY
	[d].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Name],
	[d].[Salary]
FROM
	(VALUES
		(101,1), (102,1), (103,1), (201,2), (202,2), (203,2), (204,2),
		(301,3), (302,3), (303,3), (304,3), (305,3)
	) [k_1]([Item1], [Item2])
		INNER JOIN [Employee] [d] ON ([d].[DepartmentId] = [k_1].[Item1] OR [d].[DepartmentId] = [k_1].[Item2])
ORDER BY
	[d].[Id]


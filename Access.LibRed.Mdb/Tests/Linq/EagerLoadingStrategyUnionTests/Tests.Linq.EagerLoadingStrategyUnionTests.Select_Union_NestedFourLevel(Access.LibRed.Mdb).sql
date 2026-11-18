-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[d].[CompanyId],
	[d].[Id],
	[d].[Name]
FROM
	[Department] [d]
WHERE
	[d].[CompanyId] IN (1, 2, 3)
ORDER BY
	[d].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[e].[DepartmentId],
	[e].[Id],
	[e].[Name],
	[e].[Salary]
FROM
	[Employee] [e]
WHERE
	[e].[DepartmentId] IN (101, 102, 103, 201, 202, 203, 204, 301, 302, 303, 304, 305)
ORDER BY
	[e].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[EmployeeId],
	[d].[Title]
FROM
	(VALUES
		(10101), (10201), (10202), (10301), (10302), (10303), (20101),
		(20201), (20202), (20301), (20302), (20303), (20401), (20402),
		(20403), (20404), (30101), (30201), (30202), (30301), (30302),
		(30303), (30401), (30402), (30403), (30404), (30501), (30502),
		(30503), (30504), (30505)
	) [k_1]([item])
		INNER JOIN [EmployeeTask] [d] ON ([k_1].[item] = [d].[EmployeeId])
ORDER BY
	[d].[Id]


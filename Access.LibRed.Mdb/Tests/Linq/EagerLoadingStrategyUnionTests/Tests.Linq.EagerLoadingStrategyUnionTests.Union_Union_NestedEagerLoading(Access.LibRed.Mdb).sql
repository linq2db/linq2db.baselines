-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CStr('First'),
	[c_1].[Id]
FROM
	[Company] [c_1]
UNION ALL
SELECT
	CStr('Second'),
	[c_2].[Id]
FROM
	[Company] [c_2]

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
		INNER JOIN [Employee] [d] ON ([k_1].[item] = [d].[DepartmentId])
ORDER BY
	[d].[Id]


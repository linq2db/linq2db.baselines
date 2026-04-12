-- SqlCe

SELECT
	[c_1].[Id],
	[c_1].[Name],
	[t1].[DeptCount]
FROM
	[Company] [c_1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [DeptCount]
			FROM
				[Department] [d]
			WHERE
				[d].[CompanyId] = [c_1].[Id]
		) [t1]
ORDER BY
	[c_1].[Id]

-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[DepartmentId],
	[d].[Name],
	[d].[Salary]
FROM
	[Department] [m_1]
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [m_1].[Id]
WHERE
	[m_1].[CompanyId] IN (1, 2, 3)
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- SqlCe

SELECT
	[d].[CompanyId],
	[d].[Id],
	[d].[Name],
	[t1].[EmpCount]
FROM
	[Department] [d]
		OUTER APPLY (
			SELECT
				COUNT(*) as [EmpCount]
			FROM
				[Employee] [e]
			WHERE
				[e].[DepartmentId] = [d].[Id]
		) [t1]
WHERE
	[d].[CompanyId] IN (1, 2, 3)
ORDER BY
	[d].[Id]


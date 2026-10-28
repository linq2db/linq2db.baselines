-- SqlServer.2017
SELECT
	[m_1].[Id],
	[m_1].[Name],
	[d].[Id]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [m_1].[Id]
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- SqlServer.2017
SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[k_1].[Item3],
	[d].[Id],
	[d].[Name]
FROM
	(VALUES
		(101,1,N'Company1'), (102,1,N'Company1'), (103,1,N'Company1'),
		(201,2,N'Company2'), (202,2,N'Company2'), (203,2,N'Company2'),
		(204,2,N'Company2'), (301,3,N'Company3'), (302,3,N'Company3'),
		(303,3,N'Company3'), (304,3,N'Company3'), (305,3,N'Company3')
	) [k_1]([Item1], [Item2], [Item3])
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [k_1].[Item1]
ORDER BY
	[d].[Id]

-- SqlServer.2017
SELECT
	[m_1].[Id],
	[m_1].[Name],
	[d].[Id]
FROM
	[Company] [m_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [m_1].[Id]
ORDER BY
	[d].[Id],
	[m_1].[Id]
;
SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]


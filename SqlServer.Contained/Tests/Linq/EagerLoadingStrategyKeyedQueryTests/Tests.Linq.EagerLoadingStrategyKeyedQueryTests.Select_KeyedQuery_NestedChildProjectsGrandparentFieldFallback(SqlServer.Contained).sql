-- SqlServer.Contained SqlServer.2019

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

-- SqlServer.Contained SqlServer.2019

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[k_1].[Item3],
	[d].[Id],
	[d].[Name]
FROM
	(VALUES
		(101,N'Company1',1), (102,N'Company1',1), (103,N'Company1',1),
		(201,N'Company2',2), (202,N'Company2',2), (203,N'Company2',2),
		(204,N'Company2',2), (301,N'Company3',3), (302,N'Company3',3),
		(303,N'Company3',3), (304,N'Company3',3), (305,N'Company3',3)
	) [k_1]([Item1], [Item2], [Item3])
		INNER JOIN [Employee] [d] ON [d].[DepartmentId] = [k_1].[Item1]
ORDER BY
	[d].[Id]

-- SqlServer.Contained SqlServer.2019

SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]


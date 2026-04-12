-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Kind],
	IIF([t1].[Kind] = N'Active', 1, 0)
FROM
	(
		SELECT
			[d].[Id],
			[d].[Name],
			CAST(N'Active' AS NVarChar(4000)) as [Kind]
		FROM
			[Department] [d]
		WHERE
			[d].[IsActive] = 1
		UNION ALL
		SELECT
			[d_1].[Id],
			[d_1].[Name],
			CAST(N'Inactive' AS NVarChar(4000)) as [Kind]
		FROM
			[Department] [d_1]
		WHERE
			[d_1].[IsActive] = 0
	) [t1]

-- SqlServer.Contained SqlServer.2019

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[Name]
FROM
	(VALUES
		(101,N'Active'), (103,N'Active'), (201,N'Active'),
		(203,N'Active'), (301,N'Active'), (303,N'Active'),
		(305,N'Active'), (102,N'Inactive'), (202,N'Inactive'),
		(204,N'Inactive'), (302,N'Inactive'), (304,N'Inactive')
	) [k_1]([Item1], [Item2])
		INNER JOIN [Employee] [d] ON [k_1].[Item1] = [d].[DepartmentId] AND [k_1].[Item2] = N'Active'
WHERE
	[d].[Salary] > 45000

-- SqlServer.Contained SqlServer.2019

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[Name]
FROM
	(VALUES
		(101,N'Active'), (103,N'Active'), (201,N'Active'),
		(203,N'Active'), (301,N'Active'), (303,N'Active'),
		(305,N'Active'), (102,N'Inactive'), (202,N'Inactive'),
		(204,N'Inactive'), (302,N'Inactive'), (304,N'Inactive')
	) [k_1]([Item1], [Item2])
		INNER JOIN [Contractor] [d] ON [k_1].[Item1] = [d].[DepartmentId] AND [k_1].[Item2] = N'Inactive'


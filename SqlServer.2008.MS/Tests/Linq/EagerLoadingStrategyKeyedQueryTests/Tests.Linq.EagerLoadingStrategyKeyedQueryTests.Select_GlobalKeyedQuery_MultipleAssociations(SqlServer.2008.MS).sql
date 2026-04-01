-- SqlServer.2008.MS SqlServer.2008

SELECT
	[d].[Id],
	[d].[Name]
FROM
	[Department] [d]
ORDER BY
	[d].[Id]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[d_sel].[DepartmentId],
	[d_sel].[Id],
	[d_sel].[Name],
	[d_sel].[Salary]
FROM
	[Employee] [d_sel]
WHERE
	[d_sel].[DepartmentId] IN (101, 102, 103)
ORDER BY
	[d_sel].[Id]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[d_sel].[DepartmentId],
	[d_sel].[Id],
	[d_sel].[Name],
	[d_sel].[Rate]
FROM
	[Contractor] [d_sel]
WHERE
	[d_sel].[DepartmentId] IN (101, 102, 103)
ORDER BY
	[d_sel].[Id]


-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompDER BY
	[d].[Id]


ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlServer.2005
DECLARE @maxId Int -- Int32
SET     @maxId = 1

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
ORDER BY
	[c_1].[Id]

-- SqlServer.2005

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]


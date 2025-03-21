﻿Parameters:
p0='?' (DbType = Int32), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT [t].[CategoryID], [t].[CategoryName], [t].[Description], [t].[IsDeleted], [t].[Picture]
FROM [Categories] AS [c]
CROSS JOIN (
    SELECT [l].[CategoryID], [l].[CategoryName], [l].[Description], [l].[IsDeleted], [l].[Picture]
    FROM (
        SELECT * FROM [dbo].[Categories] WHERE CategoryId = @p0
    ) AS [l]
    WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([l].[IsDeleted] = CAST(0 AS bit))) OR ([l].[IsDeleted] = CAST(0 AS bit))
) AS [t]
WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([c].[IsDeleted] = CAST(0 AS bit))) OR ([c].[IsDeleted] = CAST(0 AS bit))


-- SQLite.MS SqlServer.2019 (asynchronously)

SELECT
	[c2].[IsDeleted],
	[c2].[CategoryID],
	[c2].[CategoryName],
	[c2].[Description],
	[c2].[Picture]
FROM
	[Categories] [c1]
		CROSS JOIN (
			SELECT * FROM [dbo].[Categories] WHERE CategoryId = 1
		) [c2]




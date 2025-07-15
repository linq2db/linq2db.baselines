Parameters:
p0='?' (DbType = Int32), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT [t].[CategoryID], [t].[CategoryName], [t].[Description], [t].[IsDeleted], [t].[Picture]
FROM [Categories] AS [c]
CROSS JOIN (
    SELECT [c0].[CategoryID], [c0].[CategoryName], [c0].[Description], [c0].[IsDeleted], [c0].[Picture]
    FROM (
        SELECT * FROM [dbo].[Categories] WHERE CategoryId = @p0
    ) AS [c0]
    WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([c0].[IsDeleted] <> CAST(1 AS bit))
) AS [t]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([c].[IsDeleted] <> CAST(1 AS bit))


-- SqlServer.2025 SqlServer.2022 (asynchronously)

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




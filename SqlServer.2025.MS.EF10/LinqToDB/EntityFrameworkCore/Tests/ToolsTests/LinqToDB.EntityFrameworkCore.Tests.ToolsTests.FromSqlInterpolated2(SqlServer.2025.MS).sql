Parameters:
p0='?' (DbType = Int32), @ef_filter__p0='?' (DbType = Boolean)

SELECT [l0].[CategoryID], [l0].[CategoryName], [l0].[Description], [l0].[IsDeleted], [l0].[Picture]
FROM [Categories] AS [c]
CROSS JOIN (
    SELECT [l].[CategoryID], [l].[CategoryName], [l].[Description], [l].[IsDeleted], [l].[Picture]
    FROM (
        SELECT * FROM [dbo].[Categories] WHERE CategoryId = @p0
    ) AS [l]
    WHERE @ef_filter__p0 = CAST(1 AS bit) OR [l].[IsDeleted] = CAST(0 AS bit) OR [l].[IsDeleted] = CAST(0 AS bit)
) AS [l0]
WHERE @ef_filter__p0 = CAST(1 AS bit) OR [c].[IsDeleted] = CAST(0 AS bit) OR [c].[IsDeleted] = CAST(0 AS bit)


-- SqlServer.2025 SqlServer.2022

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




Parameters:
p0='?' (DbType = Int32), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT [c].[CategoryID], [c].[CategoryName], [c].[Description], [c].[IsDeleted], [c].[Picture]
FROM (
    SELECT * FROM [dbo].[Categories] WHERE CategoryId = @p0
) AS [c]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([c].[IsDeleted] <> CAST(1 AS bit))


-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[t1].[IsDeleted],
	[t1].[CategoryID],
	[t1].[CategoryName],
	[t1].[Description],
	[t1].[Picture]
FROM
	(
		SELECT * FROM [dbo].[Categories] WHERE CategoryId = 1
	) [t1]




Parameters:
p0='?' (DbType = Int32), @ef_filter__p0='?' (DbType = Boolean)

SELECT [l].[CategoryID], [l].[CategoryName], [l].[Description], [l].[IsDeleted], [l].[Picture]
FROM (
    SELECT * FROM [dbo].[Categories] WHERE CategoryId = @p0
) AS [l]
WHERE @ef_filter__p0 = CAST(1 AS bit) OR [l].[IsDeleted] = CAST(0 AS bit) OR [l].[IsDeleted] = CAST(0 AS bit)


-- SqlServer.2019 (asynchronously)

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




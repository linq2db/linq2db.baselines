BeforeExecute
-- SqlServer.2012 (asynchronously)

WITH [d]
(
	[FullName],
	[Dto_id],
	[Dto_name],
	[Dto_parent_id],
	[Dto_FullName]
)
AS
(
	SELECT
		[a].[name],
		[a].[id],
		[a].[name],
		[a].[parent_id],
		[a].[FullName]
	FROM
		[Dto] [a]
	WHERE
		[a].[parent_id] IS NULL
	UNION ALL
	SELECT
		[recur].[FullName] + N' > ' + [t1].[name],
		[t1].[id],
		[t1].[name],
		[t1].[parent_id],
		[t1].[FullName]
	FROM
		[Dto] [t1]
			INNER JOIN [d] [recur] ON [recur].[Dto_id] = [t1].[parent_id]
)
SELECT
	[t2].[Dto_id],
	[t2].[Dto_name],
	[t2].[Dto_parent_id],
	[t2].[Dto_FullName],
	[t2].[FullName]
FROM
	[d] [t2]


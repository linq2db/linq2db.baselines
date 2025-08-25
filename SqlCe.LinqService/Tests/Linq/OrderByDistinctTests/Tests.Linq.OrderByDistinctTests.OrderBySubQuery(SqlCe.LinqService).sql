BeforeExecute
-- SqlCe (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t_1].[DuplicateData],
	[t1].[COUNT_1]
FROM
	(
		SELECT TOP (@take)
			[t].[Id],
			[t].[DuplicateData]
		FROM
			[OrderByDistinctData] [t]
	) [t_1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[OrderByDistinctData] [c_1]
			WHERE
				[c_1].[DuplicateData] = [t_1].[DuplicateData] OR [c_1].[DuplicateData] IS NULL AND [t_1].[DuplicateData] IS NULL
		) [t1]
ORDER BY
	[t_1].[Id] DESC


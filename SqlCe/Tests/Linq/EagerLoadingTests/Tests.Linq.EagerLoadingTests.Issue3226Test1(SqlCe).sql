-- SqlCe

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]
		OUTER APPLY (
			SELECT
				Coalesce(SUM([a_Values].[Value]), 0) as [Sum_1]
			FROM
				[ItemValue] [a_Values]
			WHERE
				[x].[Id] = [a_Values].[ItemId]
		) [t1]
ORDER BY
	Coalesce([t1].[Sum_1], 0)


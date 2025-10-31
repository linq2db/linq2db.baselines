BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[Count_1]
FROM
	[MainEntity] [x]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[SubEntity] [a_SubEntities]
			WHERE
				[x].[Id] = [a_SubEntities].[MainEntityId]
		) [t1]


BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[COUNT_1]
FROM
	[MainEntity] [x]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[SubEntity] [a_SubEntities]
			WHERE
				[x].[Id] = [a_SubEntities].[MainEntityId]
		) [t1]


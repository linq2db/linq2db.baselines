-- SqlCe

SELECT
	[x].[Id],
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
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[SubEntity] [a_SubEntities_1]
		WHERE
			[x].[Id] = [a_SubEntities_1].[MainEntityId]
	)


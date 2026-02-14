-- SqlServer.2022.MS SqlServer.2022

SELECT
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[SubEntity] [a_SubEntities]
		WHERE
			[x].[Id] = [a_SubEntities].[MainEntityId]
	)
FROM
	[MainEntity] [x]


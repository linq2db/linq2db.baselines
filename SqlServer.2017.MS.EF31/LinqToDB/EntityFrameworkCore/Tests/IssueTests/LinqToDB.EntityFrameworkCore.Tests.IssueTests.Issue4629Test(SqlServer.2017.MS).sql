-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	COUNT(*) OVER(),
	[id].[Id]
FROM
	(
		SELECT TOP (@take)
			[t1].[Id]
		FROM
			(
				SELECT
					[p].[Id],
					(
						SELECT
							SUM([a_Tags].[Weight])
						FROM
							[Issue4629Tags] [a_Tags]
						WHERE
							[p].[Id] = [a_Tags].[PostId]
					) as [SUM_1]
				FROM
					[Issue4629Posts] [p]
			) [t1]
		WHERE
			(
				SELECT
					SUM([a_Tags_1].[Weight])
				FROM
					[Issue4629Tags] [a_Tags_1]
				WHERE
					[t1].[Id] = [a_Tags_1].[PostId] AND [a_Tags_1].[Weight] > 1
			) > 5
		ORDER BY
			[t1].[SUM_1]
	) [id]




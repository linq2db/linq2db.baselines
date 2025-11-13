-- SqlServer.2008.MS SqlServer.2008

SELECT
	(
		SELECT
			SUM([t3].[DetailId])
		FROM
			(
				SELECT
					[t2].[DetailId]
				FROM
					(
						SELECT
							[t1].[DetailId],
							ROW_NUMBER() OVER (ORDER BY [t1].[DetailId]) as [RN]
						FROM
							(
								SELECT DISTINCT
									[a_Details].[DetailId]
								FROM
									[DetailClass] [a_Details]
								WHERE
									[m_1].[Id1] = [a_Details].[MasterId]
							) [t1]
					) [t2]
				WHERE
					[t2].[RN] > 1 AND [t2].[RN] <= 6
			) [t3]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT
					[t5].[DetailValue]
				FROM
					(
						SELECT
							[t4].[DetailValue],
							ROW_NUMBER() OVER (ORDER BY [t4].[DetailValue]) as [RN]
						FROM
							(
								SELECT DISTINCT
									[a_Details_1].[DetailValue]
								FROM
									[DetailClass] [a_Details_1]
								WHERE
									[m_1].[Id1] = [a_Details_1].[MasterId]
							) [t4]
					) [t5]
				WHERE
					[t5].[RN] > 1 AND [t5].[RN] <= 3
			) [t6]
	)
FROM
	[MasterClass] [m_1]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[m_1].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id1]
		FROM
			[MasterClass] [t1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]


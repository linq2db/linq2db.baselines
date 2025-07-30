BeforeExecute
-- SqlServer.2008

SELECT
	[t4].[SUM_1],
	[t8].[COUNT_1]
FROM
	[MasterClass] [m_1]
		OUTER APPLY (
			SELECT
				SUM([t3].[DetailId]) as [SUM_1]
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
		) [t4]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				(
					SELECT
						*
					FROM
						(
							SELECT
								ROW_NUMBER() OVER (ORDER BY [t5].[DetailValue]) as [RN]
							FROM
								(
									SELECT DISTINCT
										[a_Details_1].[DetailValue]
									FROM
										[DetailClass] [a_Details_1]
									WHERE
										[m_1].[Id1] = [a_Details_1].[MasterId]
								) [t5]
						) [t6]
					WHERE
						[t6].[RN] > 1 AND [t6].[RN] <= 3
				) [t7]
		) [t8]

BeforeExecute
-- SqlServer.2008

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

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]


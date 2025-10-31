BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	[t3].[Sum_1],
	[t6].[Count_1]
FROM
	[MasterClass] [m_1]
		OUTER APPLY (
			SELECT
				SUM([t2].[DetailId]) as [Sum_1]
			FROM
				(
					SELECT
						[t1].[DetailId]
					FROM
						(
							SELECT DISTINCT
								[a_Details].[DetailId]
							FROM
								[DetailClass] [a_Details]
							WHERE
								[m_1].[Id1] = [a_Details].[MasterId]
						) [t1]
					ORDER BY
						[t1].[DetailId]
					OFFSET 1 ROWS FETCH NEXT 5 ROWS ONLY 
				) [t2]
		) [t3]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT
						*
					FROM
						(
							SELECT DISTINCT
								[a_Details_1].[DetailValue]
							FROM
								[DetailClass] [a_Details_1]
							WHERE
								[m_1].[Id1] = [a_Details_1].[MasterId]
						) [t4]
					ORDER BY
						[t4].[DetailValue]
					OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 
				) [t5]
		) [t6]

BeforeExecute
-- SqlServer.2014 (asynchronously)

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
-- SqlServer.2014 (asynchronously)

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]


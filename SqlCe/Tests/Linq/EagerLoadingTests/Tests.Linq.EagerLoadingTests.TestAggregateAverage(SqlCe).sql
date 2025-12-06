-- SqlCe

SELECT
	[t4].[Average]
FROM
	[MasterClass] [m_1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[DetailClass] [a_Details]
			WHERE
				[m_1].[Id1] = [a_Details].[MasterId]
		) [t1]
		OUTER APPLY (
			SELECT
				AVG(CAST([t3].[Average] AS Float)) as [Average]
			FROM
				(
					SELECT
						[t2].[Average]
					FROM
						(
							SELECT DISTINCT
								[a_Details_1].[DetailId] as [Average]
							FROM
								[DetailClass] [a_Details_1]
							WHERE
								[m_1].[Id1] = [a_Details_1].[MasterId]
						) [t2]
					ORDER BY
						[t2].[Average]
					OFFSET 1 ROWS FETCH NEXT 5 ROWS ONLY 
				) [t3]
		) [t4]
WHERE
	[t1].[Count_1] > 1

-- SqlCe

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

-- SqlCe

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value] as [Value_1],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]


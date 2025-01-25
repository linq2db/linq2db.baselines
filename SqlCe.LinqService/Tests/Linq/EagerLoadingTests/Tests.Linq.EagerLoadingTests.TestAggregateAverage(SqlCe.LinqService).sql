BeforeExecute
-- SqlCe

SELECT
	[t4].[AVG_1]
FROM
	[MasterClass] [m_1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[DetailClass] [a_Details]
			WHERE
				[m_1].[Id1] = [a_Details].[MasterId]
		) [t1]
		OUTER APPLY (
			SELECT
				AVG(CAST([t3].[DetailId] AS Float)) as [AVG_1]
			FROM
				(
					SELECT
						[t2].[DetailId]
					FROM
						(
							SELECT DISTINCT
								[a_Details_1].[DetailId]
							FROM
								[DetailClass] [a_Details_1]
							WHERE
								[m_1].[Id1] = [a_Details_1].[MasterId]
						) [t2]
					ORDER BY
						[t2].[DetailId]
					OFFSET 1 ROWS FETCH NEXT 5 ROWS ONLY 
				) [t3]
		) [t4]
WHERE
	[t1].[COUNT_1] > 1

BeforeExecute
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

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value] as [Value_1],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]


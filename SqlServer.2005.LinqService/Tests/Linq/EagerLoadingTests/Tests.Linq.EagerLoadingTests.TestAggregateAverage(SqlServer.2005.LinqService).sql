BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[t4].[AVG_1]
FROM
	[MasterClass] [m_1]
		OUTER APPLY (
			SELECT
				AVG(CAST([t3].[DetailId] AS Float)) as [AVG_1]
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
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[DetailClass] [a_Details_1]
		WHERE
			[m_1].[Id1] = [a_Details_1].[MasterId]
	) > 1

BeforeExecute
-- SqlServer.2005 (asynchronously)

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
-- SqlServer.2005 (asynchronously)

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]


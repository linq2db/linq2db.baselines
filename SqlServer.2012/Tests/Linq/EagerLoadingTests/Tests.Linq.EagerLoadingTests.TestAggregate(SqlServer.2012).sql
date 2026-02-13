-- SqlServer.2012

SELECT
	(
		SELECT
			SUM([t1].[Sum_1])
		FROM
			(
				SELECT DISTINCT
					[a_Details].[DetailId] as [Sum_1]
				FROM
					[DetailClass] [a_Details]
				WHERE
					[m_1].[Id1] = [a_Details].[MasterId]
				ORDER BY
					[a_Details].[DetailId]
				OFFSET 1 ROWS FETCH NEXT 5 ROWS ONLY 
			) [t1]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[a_Details_1].[DetailValue] as [Count_1]
				FROM
					[DetailClass] [a_Details_1]
				WHERE
					[m_1].[Id1] = [a_Details_1].[MasterId]
				ORDER BY
					[a_Details_1].[DetailValue]
				OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 
			) [t2]
	)
FROM
	[MasterClass] [m_1]

-- SqlServer.2012

SELECT
	[m_1].[Item1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id1] as [Item1]
		FROM
			[MasterClass] [t1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Item1] = [d].[MasterId]

-- SqlServer.2012

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]


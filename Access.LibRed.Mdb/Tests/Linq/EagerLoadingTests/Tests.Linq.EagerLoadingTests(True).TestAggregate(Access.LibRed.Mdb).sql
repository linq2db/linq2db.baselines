-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [t2].[Sum_1] IS NULL THEN 0
		ELSE [t2].[Sum_1]
	END,
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
			) [t3]
	)
FROM
	[MasterClass] [m_1]
		OUTER APPLY (
			SELECT
				SUM([t1].[Sum_1]) as [Sum_1]
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
		) [t2]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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
		INNER JOIN [DetailClass] [d] ON ([m_1].[Id1] = [d].[MasterId])

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]


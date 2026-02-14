-- SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value],
	[m_1].[IsDeleted],
	(
		SELECT
			COUNT(*) as [DetailCount]
		FROM
			[DetailClass] [a_Details]
		WHERE
			[m_1].[Id] = [a_Details].[MasterId]
	)
FROM
	[MasterClass] [m_1]


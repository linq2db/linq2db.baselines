-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[a_Info].[Id]
FROM
	[MasterClass] [m_1]
		LEFT JOIN [InfoClass] [a_Info] ON [m_1].[Id] = [a_Info].[MasterId] AND NOT [a_Info].[IsDeleted]


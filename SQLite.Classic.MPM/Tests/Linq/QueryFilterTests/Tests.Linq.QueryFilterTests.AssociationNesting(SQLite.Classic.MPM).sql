BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value],
	[m_1].[IsDeleted],
	[a_Info].[Id],
	[a_Info].[Value],
	[a_Info].[IsDeleted],
	[a_Info].[MasterId]
FROM
	[MasterClass] [m_1]
		LEFT JOIN [InfoClass] [a_Info] ON [m_1].[Id] = [a_Info].[MasterId]
WHERE
	NOT [m_1].[IsDeleted] AND [a_Info].[Id] IS NOT NULL AND
	[a_Info].[IsDeleted] = 1


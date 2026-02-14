-- SQLite.Classic SQLite

SELECT
	[u].[Id],
	[u].[Name],
	(
		SELECT
			GROUP_CONCAT([t1].[Name], ', ') as [MachineNames]
		FROM
			(
				SELECT
					[a_Machine].[Name]
				FROM
					[UserMachineAssignment] [uma]
						INNER JOIN [Machine] [a_Machine] ON [uma].[MachineId] = [a_Machine].[Id] OR [uma].[MachineId] IS NULL AND [a_Machine].[Id] IS NULL
				WHERE
					[aq].[Key_1] = [uma].[UserId]
				ORDER BY
					[a_Machine].[Name]
			) [t1]
	),
	[aq].[Count_1]
FROM
	[User] [u]
		LEFT JOIN (
			SELECT
				[g_1].[UserId] as [Key_1],
				COUNT(*) as [Count_1]
			FROM
				[UserMachineAssignment] [g_1]
			GROUP BY
				[g_1].[UserId]
		) [aq] ON [aq].[Key_1] = [u].[Id]

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[User] [t1]

-- SQLite.Classic SQLite

SELECT
	[t1].[UserId],
	[t1].[MachineId],
	[a_Machine].[Id],
	[a_Machine].[Name]
FROM
	[UserMachineAssignment] [t1]
		INNER JOIN [Machine] [a_Machine] ON [t1].[MachineId] = [a_Machine].[Id] OR [t1].[MachineId] IS NULL AND [a_Machine].[Id] IS NULL


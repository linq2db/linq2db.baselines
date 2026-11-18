-- SQLite.MS SQLite
SELECT
	[p].[Code],
	[p].[Name]
FROM
	[StringKeyParent] [p]

-- SQLite.MS SQLite
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[ParentCode],
	[d].[Value]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			('zzB'), ('zza')
		) [k_1]
		INNER JOIN [StringKeyChild] [d] ON [d].[ParentCode] = [k_1].[item] OR [d].[ParentCode] IS NULL AND [k_1].[item] IS NULL
ORDER BY
	[d].[Id]


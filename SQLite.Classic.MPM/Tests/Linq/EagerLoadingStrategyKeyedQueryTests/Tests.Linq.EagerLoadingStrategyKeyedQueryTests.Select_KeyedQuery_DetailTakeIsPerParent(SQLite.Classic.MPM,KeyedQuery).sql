-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[k_1].[item],
	[d_1].[Id],
	[d_1].[CompanyId],
	[d_1].[Name],
	[d_1].[IsActive]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(1), (2), (3)
		) [k_1]
		INNER JOIN (
			SELECT
				[d].[Id],
				[d].[CompanyId],
				[d].[Name],
				[d].[IsActive],
				ROW_NUMBER() OVER (PARTITION BY [d].[CompanyId] ORDER BY [d].[Id]) as [rn]
			FROM
				[Department] [d]
		) [d_1] ON [d_1].[CompanyId] = [k_1].[item] AND [d_1].[rn] <= 2
ORDER BY
	[d_1].[Id]


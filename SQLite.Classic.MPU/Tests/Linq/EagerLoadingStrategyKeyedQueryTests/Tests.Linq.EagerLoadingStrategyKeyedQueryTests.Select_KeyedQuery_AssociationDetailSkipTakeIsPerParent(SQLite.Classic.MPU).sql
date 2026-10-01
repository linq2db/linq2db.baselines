-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[k_1].[item],
	[d_1].[Id],
	[d_1].[Name]
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
				[d].[Name],
				ROW_NUMBER() OVER (PARTITION BY [d].[CompanyId] ORDER BY [d].[Id]) as [rn],
				[d].[CompanyId]
			FROM
				[Department] [d]
		) [d_1] ON [k_1].[item] = [d_1].[CompanyId] AND [d_1].[rn] > 1 AND [d_1].[rn] <= 3
ORDER BY
	[d_1].[Id]


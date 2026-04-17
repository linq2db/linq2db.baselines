-- SQLite.MS SQLite

SELECT
	[c_1].[Id],
	[c_1].[Name],
	(
		SELECT
			COUNT(*)
		FROM
			[Department] [d]
		WHERE
			[d].[CompanyId] = [c_1].[Id]
	)
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- SQLite.MS SQLite

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(1), (2), (3)
		) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]


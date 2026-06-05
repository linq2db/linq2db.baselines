-- SQLite.Classic SQLite

SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite

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
			(1)
		) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]


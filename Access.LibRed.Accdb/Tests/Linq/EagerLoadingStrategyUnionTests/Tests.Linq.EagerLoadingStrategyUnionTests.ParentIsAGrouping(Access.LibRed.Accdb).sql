-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[g_1].[CompanyId],
	COUNT(*)
FROM
	[Department] [g_1]
GROUP BY
	[g_1].[CompanyId]
ORDER BY
	[g_1].[CompanyId]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(VALUES
		(1), (2), (3)
	) [k_1]([item])
		INNER JOIN [Department] [d] ON ([d].[CompanyId] = [k_1].[item])
ORDER BY
	[d].[Id]


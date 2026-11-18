-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] >= 2
ORDER BY
	[c_1].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(VALUES
		(2), (3)
	) [k_1]([item])
		INNER JOIN [Department] [d] ON ([d].[CompanyId] = [k_1].[item])
WHERE
	[d].[IsActive]
ORDER BY
	[d].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(VALUES
		(2), (3)
	) [k_1]([item])
		INNER JOIN [Department] [d] ON ([d].[CompanyId] = [k_1].[item])
WHERE
	NOT [d].[IsActive]
ORDER BY
	[d].[Id]


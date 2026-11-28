-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		CROSS JOIN (
			SELECT TOP 1
				[c_1].[Id],
				[c_1].[Name]
			FROM
				[Company] [c_1]
			ORDER BY
				[c_1].[Id]
		) [t1]


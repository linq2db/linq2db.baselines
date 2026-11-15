-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[c_1].[Id]
FROM
	[Company] [c_1]
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
		(999)
	) [k_1]([item])
		INNER JOIN [Department] [d] ON ([d].[CompanyId] = [k_1].[item])
ORDER BY
	[d].[Id]


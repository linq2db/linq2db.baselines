-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Label],
	[t1].[Id],
	[t1].[Label] = 'ActiveOnly'
FROM
	(
		SELECT
			CStr('ActiveOnly') as [Label],
			[c_1].[Id]
		FROM
			[Company] [c_1]
		UNION ALL
		SELECT
			CStr('All') as [Label],
			[c_2].[Id]
		FROM
			[Company] [c_2]
	) [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(VALUES
		(1,'ActiveOnly'), (1,'All'), (2,'ActiveOnly'), (2,'All'),
		(3,'ActiveOnly'), (3,'All')
	) [k_1]([Item1], [Item2])
		INNER JOIN [Department] [d] ON ([k_1].[Item1] = [d].[CompanyId] AND [k_1].[Item2] = 'ActiveOnly')
WHERE
	[d].[IsActive]
ORDER BY
	[d].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(VALUES
		(1,'ActiveOnly'), (1,'All'), (2,'ActiveOnly'), (2,'All'),
		(3,'ActiveOnly'), (3,'All')
	) [k_1]([Item1], [Item2])
		INNER JOIN [Department] [d] ON ([k_1].[Item1] = [d].[CompanyId] AND [k_1].[Item2] = 'All')
ORDER BY
	[d].[Id]


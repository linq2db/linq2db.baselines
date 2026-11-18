-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CStr('Small'),
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
UNION ALL
SELECT
	CStr('Large'),
	[c_2].[Id],
	[c_2].[Name]
FROM
	[Company] [c_2]

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
		INNER JOIN [Department] [d] ON ([k_1].[item] = [d].[CompanyId])
ORDER BY
	[d].[Id]


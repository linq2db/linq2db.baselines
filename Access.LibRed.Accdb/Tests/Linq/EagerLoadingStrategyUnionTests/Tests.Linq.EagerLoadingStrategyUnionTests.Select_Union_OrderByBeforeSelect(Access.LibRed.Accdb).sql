-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[d].[CompanyId],
	[d].[Id],
	[d].[Name]
FROM
	[Department] [d]
WHERE
	[d].[CompanyId] IN (1, 2, 3)
ORDER BY
	[d].[Id]


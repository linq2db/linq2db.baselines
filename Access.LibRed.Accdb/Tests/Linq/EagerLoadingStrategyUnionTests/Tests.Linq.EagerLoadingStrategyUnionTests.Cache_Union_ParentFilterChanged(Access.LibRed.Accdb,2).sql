-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @maxCompanyId  -- Int32
SET     @maxCompanyId = 2

SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxCompanyId
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
		(1), (2)
	) [k_1]([item])
		INNER JOIN [Department] [d] ON ([d].[CompanyId] = [k_1].[item])
ORDER BY
	[d].[Id]


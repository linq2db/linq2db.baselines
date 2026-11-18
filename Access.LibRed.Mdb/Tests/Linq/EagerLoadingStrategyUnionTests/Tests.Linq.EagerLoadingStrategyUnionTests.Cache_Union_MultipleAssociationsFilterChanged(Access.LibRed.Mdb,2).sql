-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @maxId  -- Int32
SET     @maxId = 3

SELECT
	[c_1].[Id],
	[c_1].[Name]
FROM
	[Company] [c_1]
WHERE
	[c_1].[Id] <= @maxId
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
		(1), (2), (3)
	) [k_1]([item])
		INNER JOIN [Department] [d] ON ([d].[CompanyId] = [k_1].[item])
ORDER BY
	[d].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[DepartmentId],
	[d].[Name],
	[d].[Rate]
FROM
	(VALUES
		(1), (2), (3)
	) [k_1]([item])
		INNER JOIN [Contractor] [d] ON (EXISTS(
			SELECT
				*
			FROM
				[Department] [d_1]
			WHERE
				[d_1].[CompanyId] = [k_1].[item] AND [d_1].[Id] = [d].[DepartmentId]
		))
ORDER BY
	[d].[Id]


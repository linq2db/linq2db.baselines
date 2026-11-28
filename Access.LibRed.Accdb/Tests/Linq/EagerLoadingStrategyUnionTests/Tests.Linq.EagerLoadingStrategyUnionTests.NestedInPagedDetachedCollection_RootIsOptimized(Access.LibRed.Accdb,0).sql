-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @skip  -- Int32
SET     @skip = 0
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	(
		SELECT TOP 1
			[c_1].[Id]
		FROM
			[Company] [c_1]
		ORDER BY
			[c_1].[Id]
	)


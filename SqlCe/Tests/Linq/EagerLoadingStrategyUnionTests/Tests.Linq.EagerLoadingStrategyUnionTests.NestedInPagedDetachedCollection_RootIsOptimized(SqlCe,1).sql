-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[c_1].[Id]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- SqlCe
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 2 AS [item]
		UNION ALL
		SELECT 3 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SqlCe
SELECT
	[t1].[First_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		CROSS JOIN (
			SELECT TOP (1)
				[c_1].[Id] as [First_1]
			FROM
				[Company] [c_1]
			ORDER BY
				[c_1].[Id]
		) [t1]


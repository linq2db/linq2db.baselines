-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Company] [t1]
ORDER BY
	[t1].[Id]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[CompanyId],
	[t1].[Name],
	[t1].[IsActive]
FROM
	[Department] [t1]
ORDER BY
	[t1].[Id]

-- SqlCe

SELECT TOP (1)
	[t2].[Count_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t3]
		LEFT JOIN (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Company] [t1]
		) [t2] ON 1=1


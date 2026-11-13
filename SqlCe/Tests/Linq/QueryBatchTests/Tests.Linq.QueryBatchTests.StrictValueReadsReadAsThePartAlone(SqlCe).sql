-- SqlCe
SELECT
	[t1].[not_null],
	[t1].[Value_1],
	[t2].[not_null] as [not_null_1],
	[t2].[Name],
	[t3].[Id],
	[t3].[Name] as [Name_1],
	[t5].[Count_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t6]
		LEFT JOIN (
			SELECT TOP (1)
				1 as [not_null],
				[i].[Value] as [Value_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] = 3
		) [t1] ON 1=1
		LEFT JOIN (
			SELECT TOP (1)
				1 as [not_null],
				[i_1].[Name]
			FROM
				[BatchItem] [i_1]
			WHERE
				[i_1].[Id] = 5
		) [t2] ON 1=1
		CROSS JOIN (
			SELECT TOP (1)
				[i_2].[Id],
				[i_2].[Name]
			FROM
				[BatchItem] [i_2]
			WHERE
				[i_2].[Id] = 4
		) [t3]
		LEFT JOIN (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[BatchItem] [t4]
		) [t5] ON 1=1

-- SqlCe
SELECT TOP (1)
	[i].[Value]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] = 3

-- SqlCe
SELECT TOP (1)
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] = 5


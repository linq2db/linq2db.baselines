-- SqlCe
DECLARE @bound DateTime
SET     @bound = '2000-01-01 00:00:00.000'

SELECT
	[e].[Id],
	Coalesce([j].[Value1], 0) + 1,
	CASE
		WHEN Coalesce([j].[Value1], 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(Coalesce([j].[Value1], 0) - 1),
	CASE
		WHEN Coalesce([j].[Date], '1753-01-01 00:00:00.000') > @bound
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce([j].[Date], '1753-01-01 00:00:00.000') < @bound
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce([j].[Date], '1753-01-01 00:00:00.000') > [e].[Date]
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce([j].[Date], '1753-01-01 00:00:00.000') <= [e].[Date]
			THEN 'y'
		ELSE 'n'
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- SqlCe
SELECT
	DatePart(year, Coalesce([j].[Date], '1753-01-01 00:00:00.000'))
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000


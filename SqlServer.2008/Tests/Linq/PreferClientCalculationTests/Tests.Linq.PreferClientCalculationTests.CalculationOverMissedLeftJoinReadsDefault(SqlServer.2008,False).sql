-- SqlServer.2008
DECLARE @bound DateTime2
SET     @bound = CAST('2000-01-01T00:00:00.0000000' AS DATETIME2)

SELECT
	[e].[Id],
	Coalesce([j].[Value1], 0) + 1,
	CASE
		WHEN Coalesce([j].[Value1], 0) < 5 THEN N'a'
		ELSE N'b'
	END,
	Abs(Coalesce([j].[Value1], 0) - 1),
	[j].[Date],
	CASE
		WHEN Coalesce([j].[Date], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)) > @bound
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Date], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)) < @bound
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Date], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)) > [e].[Date]
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Date], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)) <= [e].[Date]
			THEN N'y'
		ELSE N'n'
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]


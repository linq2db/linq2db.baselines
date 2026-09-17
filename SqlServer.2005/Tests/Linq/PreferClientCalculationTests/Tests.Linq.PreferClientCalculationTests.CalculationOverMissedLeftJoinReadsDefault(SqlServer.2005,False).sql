-- SqlServer.2005
DECLARE @bound DateTime
SET     @bound = CAST('2000-01-01T00:00:00.000' AS DATETIME)

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
		WHEN Coalesce([j].[Date], CAST('1753-01-01T00:00:00.000' AS DATETIME)) > @bound
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Date], CAST('1753-01-01T00:00:00.000' AS DATETIME)) < @bound
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Date], CAST('1753-01-01T00:00:00.000' AS DATETIME)) > [e].[Date]
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Date], CAST('1753-01-01T00:00:00.000' AS DATETIME)) <= [e].[Date]
			THEN N'y'
		ELSE N'n'
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]


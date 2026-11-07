-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN CAST([e].[Value1] AS Float) / 4 - FLOOR(CAST([e].[Value1] AS Float) / 4) = 0.5
					THEN ROUND((CAST([e].[Value1] AS Float) / 4) * 0.5, 0) * 2
				ELSE ROUND(CAST([e].[Value1] AS Float) / 4, 0)
			END as [c1]
		FROM
			[MissedJoinEntity] [e]
	) [t]
WHERE
	[t].[c1] <> 0

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]


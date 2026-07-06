-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [IssueAliasBugT1]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	10
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [IssueAliasBugT1]
(
	[Id],
	[Value]
)
VALUES
(
	2,
	20
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [IssueAliasBugT2]
(
	[Id],
	[OutId],
	[Cnt]
)
VALUES
(
	1,
	1,
	3
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [IssueAliasBugT2]
(
	[Id],
	[OutId],
	[Cnt]
)
VALUES
(
	2,
	1,
	5
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [IssueAliasBugT2]
(
	[Id],
	[OutId],
	[Cnt]
)
VALUES
(
	3,
	2,
	7
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @minValue  -- Int32
SET     @minValue = 15

SELECT
	[o].[Id],
	[o].[Value],
	(
		SELECT
			SUM([i].[Cnt])
		FROM
			[IssueAliasBugT2] [i]
		WHERE
			[i].[OutId] = [o].[Id]
		GROUP BY
			[i].[OutId]
		LIMIT 1
	)
FROM
	[IssueAliasBugT1] [o]
WHERE
	[o].[Value] >= @minValue


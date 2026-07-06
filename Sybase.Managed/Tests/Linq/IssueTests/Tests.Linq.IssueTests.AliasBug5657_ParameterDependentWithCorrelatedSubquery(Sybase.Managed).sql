-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase
DECLARE @minValue Integer -- Int32
SET     @minValue = 15

SELECT
	[o].[Id],
	[o].[Value],
	(
		SELECT
			COUNT(*)
		FROM
			[IssueAliasBugT2] [i]
		WHERE
			[i].[OutId] = [o].[Id]
	)
FROM
	[IssueAliasBugT1] [o]
WHERE
	[o].[Value] >= @minValue


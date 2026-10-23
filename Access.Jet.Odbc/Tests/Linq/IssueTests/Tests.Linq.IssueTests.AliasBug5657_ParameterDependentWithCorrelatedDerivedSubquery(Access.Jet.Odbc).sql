-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
DECLARE @minValue Int -- Int32
SET     @minValue = 15

SELECT
	[o].[Id],
	[o].[Value],
	(
		SELECT TOP 1
			SUM([i].[Cnt])
		FROM
			[IssueAliasBugT2] [i]
		WHERE
			[i].[OutId] = [o].[Id]
		GROUP BY
			[i].[OutId]
	)
FROM
	[IssueAliasBugT1] [o]
WHERE
	[o].[Value] >= ?


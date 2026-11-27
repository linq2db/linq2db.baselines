-- Access.Ace.Odbc AccessODBC
INSERT INTO [AliasBaseTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	10
)

-- Access.Ace.Odbc AccessODBC
INSERT INTO [AliasBaseTable]
(
	[Id],
	[Value]
)
VALUES
(
	2,
	20
)

-- Access.Ace.Odbc AccessODBC
INSERT INTO [AliasDetailTable]
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

-- Access.Ace.Odbc AccessODBC
INSERT INTO [AliasDetailTable]
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

-- Access.Ace.Odbc AccessODBC
INSERT INTO [AliasDetailTable]
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

-- Access.Ace.Odbc AccessODBC
DECLARE @minValue Int -- Int32
SET     @minValue = 15

SELECT
	[o].[Id],
	[o].[Value],
	(
		SELECT TOP 1
			SUM([i].[Cnt])
		FROM
			[AliasDetailTable] [i]
		WHERE
			[i].[OutId] = [o].[Id]
		GROUP BY
			[i].[OutId]
	)
FROM
	[AliasBaseTable] [o]
WHERE
	[o].[Value] >= ?


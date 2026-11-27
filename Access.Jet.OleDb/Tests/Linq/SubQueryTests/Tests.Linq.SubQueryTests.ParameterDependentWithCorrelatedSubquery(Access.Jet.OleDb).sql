-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @minValue Integer -- Int32
SET     @minValue = 15

SELECT
	[o].[Id],
	[o].[Value],
	(
		SELECT
			COUNT(*)
		FROM
			[AliasDetailTable] [i]
		WHERE
			[i].[OutId] = [o].[Id]
	)
FROM
	[AliasBaseTable] [o]
WHERE
	[o].[Value] >= @minValue


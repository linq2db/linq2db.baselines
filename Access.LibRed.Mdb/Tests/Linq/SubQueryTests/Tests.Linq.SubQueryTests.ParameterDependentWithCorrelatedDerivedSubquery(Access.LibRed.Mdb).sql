-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @minValue  -- Int32
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
	[o].[Value] >= @minValue


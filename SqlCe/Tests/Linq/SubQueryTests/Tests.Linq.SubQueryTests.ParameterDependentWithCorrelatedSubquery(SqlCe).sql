-- SqlCe
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

-- SqlCe
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

-- SqlCe
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

-- SqlCe
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

-- SqlCe
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

-- SqlCe
DECLARE @minValue Int -- Int32
SET     @minValue = 15

SELECT
	[o].[Id],
	[o].[Value],
	[t1].[InnerCount]
FROM
	[AliasBaseTable] [o]
		OUTER APPLY (
			SELECT
				COUNT(*) as [InnerCount]
			FROM
				[AliasDetailTable] [i]
			WHERE
				[i].[OutId] = [o].[Id]
		) [t1]
WHERE
	[o].[Value] >= @minValue


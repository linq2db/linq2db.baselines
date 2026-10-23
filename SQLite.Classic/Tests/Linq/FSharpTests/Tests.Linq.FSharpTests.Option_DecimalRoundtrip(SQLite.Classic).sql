-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value Decimal(4, 2)
SET     @Value = 12.34

INSERT INTO [OptionDecimalTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value Decimal
SET     @Value = NULL

INSERT INTO [OptionDecimalTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[OptionDecimalTable] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[OptionDecimalTable] [r]
WHERE
	[r].[Id] = 2
LIMIT 2


-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Int32
SET     @Value = 42

INSERT INTO [OptionNullableElemTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value  -- Int32
SET     @Value = NULL

INSERT INTO [OptionNullableElemTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[Id],
	[r].[Value]
FROM
	[OptionNullableElemTable] [r]
WHERE
	[r].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[Id],
	[r].[Value]
FROM
	[OptionNullableElemTable] [r]
WHERE
	[r].[Id] = 2


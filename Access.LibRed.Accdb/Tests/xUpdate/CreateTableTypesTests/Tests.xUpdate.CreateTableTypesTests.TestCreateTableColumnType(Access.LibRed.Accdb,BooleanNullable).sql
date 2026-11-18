-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BooleanNullable  -- Boolean
SET     @BooleanNullable = False

INSERT INTO [CreateTableTypes]
(
	[Id],
	[BooleanNullable]
)
VALUES
(
	@Id,
	@BooleanNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @BooleanNullable  -- Boolean
SET     @BooleanNullable = True

INSERT INTO [CreateTableTypes]
(
	[Id],
	[BooleanNullable]
)
VALUES
(
	@Id,
	@BooleanNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[BooleanNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]


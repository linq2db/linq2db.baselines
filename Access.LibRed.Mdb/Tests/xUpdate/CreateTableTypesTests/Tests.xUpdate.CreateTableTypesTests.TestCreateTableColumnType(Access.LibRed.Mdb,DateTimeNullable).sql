-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @DateTimeNullable  -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTimeNullable]
)
VALUES
(
	@Id,
	@DateTimeNullable
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @DateTimeNullable  -- DateTime
SET     @DateTimeNullable = #2018-11-25 01:02:03#

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTimeNullable]
)
VALUES
(
	@Id,
	@DateTimeNullable
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[DateTimeNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]


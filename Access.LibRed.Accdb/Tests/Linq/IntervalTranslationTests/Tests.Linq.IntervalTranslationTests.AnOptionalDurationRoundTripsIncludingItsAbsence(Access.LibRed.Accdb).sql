-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Grace  -- Int64
SET     @Grace = 4567
DECLARE @Required  -- Int64
SET     @Required = 4567

INSERT INTO [OptionalDurationRow]
(
	[Id],
	[Grace],
	[Required]
)
VALUES
(
	@Id,
	@Grace,
	@Required
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Grace  -- Object
SET     @Grace = NULL
DECLARE @Required  -- Int64
SET     @Required = 4567

INSERT INTO [OptionalDurationRow]
(
	[Id],
	[Grace],
	[Required]
)
VALUES
(
	@Id,
	@Grace,
	@Required
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Grace],
	[t1].[Required]
FROM
	[OptionalDurationRow] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Grace  -- Object
SET     @Grace = NULL

UPDATE
	[OptionalDurationRow] [r]
SET
	[r].[Grace] = @Grace
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Grace  -- Int64
SET     @Grace = 4567

UPDATE
	[OptionalDurationRow] [r]
SET
	[r].[Grace] = @Grace
WHERE
	[r].[Id] = 2

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Grace],
	[t1].[Required]
FROM
	[OptionalDurationRow] [t1]
ORDER BY
	[t1].[Id]


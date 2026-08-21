-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Grace BigInt -- Int64
SET     @Grace = 4567
DECLARE @Required BigInt -- Int64
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

-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Grace BigInt -- Int64
SET     @Grace = NULL
DECLARE @Required BigInt -- Int64
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

-- SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Grace],
	[t1].[Required]
FROM
	[OptionalDurationRow] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2019
DECLARE @Grace BigInt -- Int64
SET     @Grace = NULL

UPDATE
	[OptionalDurationRow]
SET
	[Grace] = @Grace
WHERE
	[OptionalDurationRow].[Id] = 1

-- SqlServer.2019
DECLARE @Grace BigInt -- Int64
SET     @Grace = 4567

UPDATE
	[OptionalDurationRow]
SET
	[Grace] = @Grace
WHERE
	[OptionalDurationRow].[Id] = 2

-- SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Grace],
	[t1].[Required]
FROM
	[OptionalDurationRow] [t1]
ORDER BY
	[t1].[Id]


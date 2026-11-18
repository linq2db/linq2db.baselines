-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Key Int -- Int32
SET     @Key = 10

INSERT INTO [DuOptRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Key Int -- Int32
SET     @Key = NULL

INSERT INTO [DuOptRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- SqlServer.2019
SELECT
	[x].[Key]
FROM
	[DuOptRow] [x]
ORDER BY
	[x].[Id]


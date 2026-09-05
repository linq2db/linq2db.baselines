-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Key Int -- Int32
SET     @Key = 10

INSERT INTO [DuRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Key Int -- Int32
SET     @Key = 20

INSERT INTO [DuRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- SqlServer.2016
DECLARE @Key Int -- Int32
SET     @Key = 10

SELECT
	[x].[Id],
	[x].[Key]
FROM
	[DuRow] [x]
WHERE
	[x].[Key] = @Key


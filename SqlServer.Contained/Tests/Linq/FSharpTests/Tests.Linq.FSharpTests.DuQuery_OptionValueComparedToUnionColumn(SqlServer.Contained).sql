-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Key Int -- Int32
SET     @Key = 10
DECLARE @OptKey Int -- Int32
SET     @OptKey = 10

INSERT INTO [DuPairRow]
(
	[Id],
	[Key],
	[OptKey]
)
VALUES
(
	@Id,
	@Key,
	@OptKey
)

-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Key Int -- Int32
SET     @Key = 20
DECLARE @OptKey Int -- Int32
SET     @OptKey = 21

INSERT INTO [DuPairRow]
(
	[Id],
	[Key],
	[OptKey]
)
VALUES
(
	@Id,
	@Key,
	@OptKey
)

-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Key Int -- Int32
SET     @Key = 30
DECLARE @OptKey Int -- Int32
SET     @OptKey = NULL

INSERT INTO [DuPairRow]
(
	[Id],
	[Key],
	[OptKey]
)
VALUES
(
	@Id,
	@Key,
	@OptKey
)

-- SqlServer.Contained SqlServer.2019
SELECT
	[x].[Id]
FROM
	[DuPairRow] [x]
WHERE
	[x].[OptKey] = [x].[Key] OR [x].[OptKey] IS NULL AND [x].[Key] IS NULL


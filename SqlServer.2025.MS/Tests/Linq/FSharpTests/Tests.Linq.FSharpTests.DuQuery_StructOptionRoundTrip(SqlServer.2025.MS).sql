-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Key Int -- Int32
SET     @Key = 10

INSERT INTO [StructDuOptRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Key Int -- Int32
SET     @Key = NULL

INSERT INTO [StructDuOptRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[x].[Key]
FROM
	[StructDuOptRow] [x]
ORDER BY
	[x].[Id]


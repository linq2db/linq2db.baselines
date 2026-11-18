-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Key Int -- Int32
SET     @Key = 7

INSERT INTO [PrivateDuRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[x].[Key]
FROM
	[PrivateDuRow] [x]
ORDER BY
	[x].[Id]


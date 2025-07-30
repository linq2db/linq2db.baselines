BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @IntEnum Int -- Int32
SET     @IntEnum = 11

INSERT INTO [CreateTableTypes]
(
	[Id],
	[IntEnum]
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @IntEnum Int -- Int32
SET     @IntEnum = 60

INSERT INTO [CreateTableTypes]
(
	[Id],
	[IntEnum]
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[IntEnum]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]


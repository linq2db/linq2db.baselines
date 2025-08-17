BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int32Nullable Int -- Int32
SET     @Int32Nullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32Nullable]
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int32Nullable Int -- Int32
SET     @Int32Nullable = 2

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32Nullable]
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Int32Nullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]


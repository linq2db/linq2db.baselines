BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NULL)
	CREATE TABLE [CreateTableTypes]
	(
		[Id]    Int NOT NULL,
		[Int32] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int32 Int -- Int32
SET     @Int32 = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32]
)
VALUES
(
	@Id,
	@Int32
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int32 Int -- Int32
SET     @Int32 = 1

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32]
)
VALUES
(
	@Id,
	@Int32
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Int32]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]


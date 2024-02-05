BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NULL)
	CREATE TABLE [CreateTableTypes]
	(
		[Id]         Int         NOT NULL,
		[StringEnum] NVarChar(2) NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StringEnum NVarChar(2) -- String
SET     @StringEnum = N'14'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnum]
)
VALUES
(
	@Id,
	@StringEnum
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StringEnum NVarChar(2) -- String
SET     @StringEnum = N'4'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnum]
)
VALUES
(
	@Id,
	@StringEnum
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[StringEnum]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]


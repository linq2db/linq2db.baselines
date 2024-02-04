﻿BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NOT NULL)
	DROP TABLE [CreateTableTypes]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NULL)
	CREATE TABLE [CreateTableTypes]
	(
		[StringConverted] NVarChar(Max)     NULL,
		[Id]              Int           NOT NULL
	)

BeforeExecute
-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StringConverted NVarChar(4000) -- String
SET     @StringConverted = N'null'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringConverted]
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StringConverted NVarChar(4000) -- String
SET     @StringConverted = N'[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringConverted]
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[StringConverted]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NOT NULL)
	DROP TABLE [CreateTableTypes]


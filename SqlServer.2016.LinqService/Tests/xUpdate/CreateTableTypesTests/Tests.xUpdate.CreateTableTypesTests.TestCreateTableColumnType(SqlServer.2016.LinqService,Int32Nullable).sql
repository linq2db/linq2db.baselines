﻿BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [CreateTableTypes]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NULL)
	CREATE TABLE [CreateTableTypes]
	(
		[Id]            Int NOT NULL,
		[Int32Nullable] Int     NULL
	)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016
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
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Int32Nullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [CreateTableTypes]


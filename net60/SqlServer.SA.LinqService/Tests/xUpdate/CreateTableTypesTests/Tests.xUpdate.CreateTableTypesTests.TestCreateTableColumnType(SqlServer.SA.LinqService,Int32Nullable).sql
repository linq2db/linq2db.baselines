﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [CreateTableTypes]
(
	[Id]            Int NOT NULL,
	[Int32Nullable] Int     NULL
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Int32Nullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]


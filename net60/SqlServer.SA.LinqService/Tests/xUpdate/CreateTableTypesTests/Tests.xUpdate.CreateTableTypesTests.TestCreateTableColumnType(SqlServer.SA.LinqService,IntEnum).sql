﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [CreateTableTypes]
(
	[Id]      Int NOT NULL,
	[IntEnum] Int NOT NULL
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[IntEnum]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]


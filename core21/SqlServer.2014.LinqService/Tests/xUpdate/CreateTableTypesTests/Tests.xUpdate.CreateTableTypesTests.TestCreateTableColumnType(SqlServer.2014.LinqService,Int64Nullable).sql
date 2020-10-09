﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [CreateTableTypes]
(
	[Id]            Int    NOT NULL,
	[Int64Nullable] BigInt     NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int64Nullable BigInt -- Int64
SET     @Int64Nullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64Nullable]
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int64Nullable BigInt -- Int64
SET     @Int64Nullable = 4

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64Nullable]
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[t1].[Id], 
	[t1].[Int64Nullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [CreateTableTypes]


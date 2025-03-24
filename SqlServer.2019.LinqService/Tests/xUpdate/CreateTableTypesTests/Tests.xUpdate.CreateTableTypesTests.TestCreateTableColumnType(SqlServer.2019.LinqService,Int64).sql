﻿BeforeExecute
--  SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int64 BigInt -- Int64
SET     @Int64 = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64]
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
--  SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int64 BigInt -- Int64
SET     @Int64 = 3

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64]
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
--  SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Int64]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]


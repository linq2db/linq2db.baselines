﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BooleanNullable Bit -- Boolean
SET     @BooleanNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[BooleanNullable]
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @BooleanNullable Bit -- Boolean
SET     @BooleanNullable = 1

INSERT INTO [CreateTableTypes]
(
	[Id],
	[BooleanNullable]
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[BooleanNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]


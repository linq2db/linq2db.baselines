﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [CreateTableTypes]
(
	[Id]       Int      NOT NULL,
	[DateTime] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DateTime DateTime2
SET     @DateTime = DATETIME2FROMPARTS(2000, 1, 1, 0, 0, 0, 0, 7)

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DateTime DateTime2
SET     @DateTime = DATETIME2FROMPARTS(2018, 11, 24, 1, 2, 3, 0, 7)

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[DateTime]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NOT NULL)
	DROP TABLE [CreateTableTypes]


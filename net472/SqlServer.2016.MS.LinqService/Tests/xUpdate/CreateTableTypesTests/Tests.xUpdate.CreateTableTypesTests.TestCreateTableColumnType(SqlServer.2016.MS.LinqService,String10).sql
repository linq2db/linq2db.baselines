﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [CreateTableTypes]
(
	[String] NVarChar(10) NOT NULL,
	[Id]     Int          NOT NULL
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @String NVarChar(10) -- String
SET     @String = N''

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @String NVarChar(10) -- String
SET     @String = N'test 10'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[String]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [CreateTableTypes]


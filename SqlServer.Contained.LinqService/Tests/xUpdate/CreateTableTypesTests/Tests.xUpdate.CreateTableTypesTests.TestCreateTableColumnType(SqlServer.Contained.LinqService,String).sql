﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @String NVarChar(4000) -- String
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
--  SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @String NVarChar(4000) -- String
SET     @String = N'test max value'

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
--  SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[String]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]


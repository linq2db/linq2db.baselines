﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateTableTypes') IS NOT NULL)
	DROP TABLE [CreateTableTypes]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateTableTypes') IS NULL)
	EXECUTE('
		CREATE TABLE [CreateTableTypes]
		(
			[String] NVarChar(255)     NULL,
			[Id]     Int           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @String UniVarChar -- String
SET     @String = NULL

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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String UniVarChar(23) -- String
SET     @String = 'test max value nullable'

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
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[String]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateTableTypes') IS NOT NULL)
	DROP TABLE [CreateTableTypes]


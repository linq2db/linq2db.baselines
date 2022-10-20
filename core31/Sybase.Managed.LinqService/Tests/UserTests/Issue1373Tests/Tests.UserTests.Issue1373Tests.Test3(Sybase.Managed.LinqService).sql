﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1373Tests') IS NOT NULL)
	DROP TABLE [Issue1373Tests]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1373Tests') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1373Tests]
		(
			[Id]     Int           NOT NULL,
			[Field1] NVarChar(255)     NULL,

			CONSTRAINT [PK_Issue1373Tests] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Field1 UniVarChar -- String
SET     @Field1 = NULL

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Field1 UniVarChar -- String
SET     @Field1 = NULL

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field1 UniVarChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[Issue1373Tests] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1373Tests') IS NOT NULL)
	DROP TABLE [Issue1373Tests]


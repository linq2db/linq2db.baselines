﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2816Table') IS NOT NULL)
	DROP TABLE [Issue2816Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2816Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue2816Table]
		(
			[Id]   Int           NOT NULL,
			[Text] NVarChar(255)     NULL,

			CONSTRAINT [PK_Issue2816Table] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text UniVarChar(1) -- String
SET     @Text = ' '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Text UniVarChar(3) -- String
SET     @Text = '   '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Text UniVarChar(4) -- String
SET     @Text = '  x '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	NOT ([p].[Text] IS NULL OR [p].[Text] NOT LIKE '%[^	
                 　]%')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2816Table') IS NOT NULL)
	DROP TABLE [Issue2816Table]


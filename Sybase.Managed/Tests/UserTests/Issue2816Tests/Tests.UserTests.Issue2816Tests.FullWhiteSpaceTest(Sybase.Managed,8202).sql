BeforeExecute
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

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
SELECT 1,' ' UNION ALL
SELECT 2,'   ' UNION ALL
SELECT 3,'  x '

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


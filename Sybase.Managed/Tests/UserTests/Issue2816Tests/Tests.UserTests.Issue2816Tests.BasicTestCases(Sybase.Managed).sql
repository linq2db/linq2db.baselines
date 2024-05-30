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
SELECT 0,'' UNION ALL
SELECT 1,'a' UNION ALL
SELECT 2,' m ' UNION ALL
SELECT 3,' ' UNION ALL
SELECT 4,'  ' UNION ALL
SELECT 5,NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	([p].[Text] IS NULL OR [p].[Text] NOT LIKE '%[^	
                 　]%')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2816Table') IS NOT NULL)
	DROP TABLE [Issue2816Table]


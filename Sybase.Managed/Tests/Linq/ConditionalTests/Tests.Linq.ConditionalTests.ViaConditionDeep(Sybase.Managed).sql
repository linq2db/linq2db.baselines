BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConditionalData') IS NOT NULL)
	DROP TABLE [ConditionalData]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConditionalData') IS NULL)
	EXECUTE('
		CREATE TABLE [ConditionalData]
		(
			[Id]         Int           NOT NULL,
			[StringProp] NVarChar(255)     NULL,

			CONSTRAINT [PK_ConditionalData] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
SELECT 1,'String1' UNION ALL
SELECT 2,'String2' UNION ALL
SELECT 3,NULL UNION ALL
SELECT 4,'String4' UNION ALL
SELECT 5,'String5' UNION ALL
SELECT 6,NULL UNION ALL
SELECT 7,'String7' UNION ALL
SELECT 8,'String8' UNION ALL
SELECT 9,NULL UNION ALL
SELECT 10,'String10' UNION ALL
SELECT 11,'-1'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Id],
	CASE
		WHEN [x].[StringProp] = '1' AND [x].[StringProp] IS NOT NULL OR [x].[StringProp] IS NULL
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [x].[StringProp] = '2' AND [x].[StringProp] IS NOT NULL
			THEN 1
		ELSE 0
	END,
	[x].[StringProp],
	1,
	[x].[StringProp] + '2',
	2
FROM
	[ConditionalData] [x]
WHERE
	CASE
		WHEN [x].[StringProp] = '1' AND [x].[StringProp] IS NOT NULL OR [x].[StringProp] IS NULL
			THEN '2'
		WHEN [x].[StringProp] = '2' AND [x].[StringProp] IS NOT NULL
			THEN [x].[StringProp]
		ELSE [x].[StringProp] + '2'
	END LIKE '%2' ESCAPE '~' AND
	CASE
		WHEN [x].[StringProp] = '1' AND [x].[StringProp] IS NOT NULL OR [x].[StringProp] IS NULL
			THEN NULL
		WHEN [x].[StringProp] = '2' AND [x].[StringProp] IS NOT NULL
			THEN 1
		ELSE 2
	END = 2 AND
	CASE
		WHEN [x].[StringProp] = '1' AND [x].[StringProp] IS NOT NULL OR [x].[StringProp] IS NULL
			THEN NULL
		WHEN [x].[StringProp] = '2' AND [x].[StringProp] IS NOT NULL
			THEN 1
		ELSE 2
	END IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConditionalData') IS NOT NULL)
	DROP TABLE [ConditionalData]


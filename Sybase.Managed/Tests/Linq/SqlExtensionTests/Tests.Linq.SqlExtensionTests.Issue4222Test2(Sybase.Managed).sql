BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Entry') IS NOT NULL)
	DROP TABLE [Entry]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Entry') IS NULL)
	EXECUTE('
		CREATE TABLE [Entry]
		(
			[Id]     VARCHAR(36)   NOT NULL,
			[RecSrc] NVarChar(255)     NULL,
			[Value]  Int           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[e].[Id],
	[e].[RecSrc],
	[e].[Value]
FROM
	[Entry] [e]
WHERE
	[e].[RecSrc] = 'default' AND [e].[Value] = 2007 OR
	[e].[RecSrc] = 'other' AND [e].[Value] = 2008

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Entry') IS NOT NULL)
	DROP TABLE [Entry]


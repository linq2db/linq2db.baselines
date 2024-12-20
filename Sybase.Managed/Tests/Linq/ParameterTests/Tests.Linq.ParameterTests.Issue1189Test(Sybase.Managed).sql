BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1189Customer') IS NOT NULL)
	DROP TABLE [Issue1189Customer]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1189Customer') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1189Customer]
		(
			[ID]   Int           NOT NULL,
			[NAME] NVarChar(255) NOT NULL,

			CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	'2020-02-29 17:54:55.123'
FROM
	[Issue1189Customer] [k_1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1189Customer') IS NOT NULL)
	DROP TABLE [Issue1189Customer]


BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1189Customer]', N'U') IS NOT NULL)
	DROP TABLE [Issue1189Customer]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1189Customer]', N'U') IS NULL)
	CREATE TABLE [Issue1189Customer]
	(
		[ID]   Int            NOT NULL,
		[NAME] NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	CAST('2020-02-29T17:54:55.123' AS DATETIME)
FROM
	[Issue1189Customer] [k_1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1189Customer]', N'U') IS NOT NULL)
	DROP TABLE [Issue1189Customer]


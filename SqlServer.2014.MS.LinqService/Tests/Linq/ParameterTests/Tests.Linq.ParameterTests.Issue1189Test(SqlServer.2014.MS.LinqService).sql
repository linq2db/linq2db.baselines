﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue1189Customer]', N'U') IS NOT NULL)
	DROP TABLE [Issue1189Customer]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue1189Customer]', N'U') IS NULL)
	CREATE TABLE [Issue1189Customer]
	(
		[ID]   Int            NOT NULL,
		[NAME] NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @DateTime DateTime2
SET     @DateTime = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	@DateTime
FROM
	[Issue1189Customer] [k_1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue1189Customer]', N'U') IS NOT NULL)
	DROP TABLE [Issue1189Customer]


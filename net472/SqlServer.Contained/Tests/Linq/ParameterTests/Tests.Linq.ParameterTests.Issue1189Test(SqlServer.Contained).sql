﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [Issue1189Customer]
(
	[ID]   Int            NOT NULL,
	[NAME] NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @DateTime DateTime2
SET     @DateTime = '2020-02-29T17:54:55.1231234'

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	@DateTime
FROM
	[Issue1189Customer] [k_1]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Issue1189Customer]


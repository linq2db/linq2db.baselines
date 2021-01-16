BeforeExecute
-- SqlServer.2005

CREATE TABLE [Issue1189Customer]
(
	[ID]   Int            NOT NULL,
	[NAME] NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2005
DECLARE @DateTime DateTime
SET     @DateTime = '2020-02-29T17:54:55.123'

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	@DateTime
FROM
	[Issue1189Customer] [k_1]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Issue1189Customer]


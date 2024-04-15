BeforeExecute
-- SqlCe

DROP TABLE [Issue1189Customer]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1189Customer]
(
	[ID]   Int           NOT NULL,
	[NAME] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe
DECLARE @DateTime DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	[k_1].[ID] as [Id],
	[k_1].[NAME] as [Name],
	@DateTime as [ToDelete]
FROM
	[Issue1189Customer] [k_1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue1189Customer]


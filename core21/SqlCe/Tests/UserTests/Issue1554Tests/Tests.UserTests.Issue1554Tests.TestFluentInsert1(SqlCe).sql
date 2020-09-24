BeforeExecute
-- SqlCe

CREATE TABLE [Issue1554FluentTable]
(
	[Id]              Int            NOT NULL,
	[ClaimedKeyType]  NVarChar(4000) NOT NULL,
	[ClaimedKeyTypeN] NVarChar(4000)     NULL,

	CONSTRAINT [PK_Issue1554FluentTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue1554FluentTable]
(
	[Id],
	[ClaimedKeyType],
	[ClaimedKeyTypeN]
)
VALUES
(
	0,
	'EC',
	'EC'
)

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554FluentTable] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue1554FluentTable]


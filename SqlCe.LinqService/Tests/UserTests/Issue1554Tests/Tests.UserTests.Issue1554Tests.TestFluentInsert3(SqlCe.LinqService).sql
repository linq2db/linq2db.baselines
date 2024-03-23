BeforeExecute
-- SqlCe

DROP TABLE [Issue1554FluentTable]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1554FluentTable]
(
	[Id]              Int         NOT NULL,
	[ClaimedKeyType]  NVarChar(3) NOT NULL,
	[ClaimedKeyTypeN] NVarChar(3)     NULL,

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

SELECT TOP (2)
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554FluentTable] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue1554FluentTable]


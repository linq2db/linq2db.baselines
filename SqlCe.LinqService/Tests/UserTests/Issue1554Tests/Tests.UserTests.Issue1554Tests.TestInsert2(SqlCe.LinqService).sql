BeforeExecute
-- SqlCe

DROP TABLE [Issue1554Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1554Table]
(
	[Id]              Int         NOT NULL,
	[ClaimedKeyType]  NVarChar(3) NOT NULL,
	[ClaimedKeyTypeN] NVarChar(3)     NULL,

	CONSTRAINT [PK_Issue1554Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue1554Table]
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
	[Issue1554Table] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue1554Table]


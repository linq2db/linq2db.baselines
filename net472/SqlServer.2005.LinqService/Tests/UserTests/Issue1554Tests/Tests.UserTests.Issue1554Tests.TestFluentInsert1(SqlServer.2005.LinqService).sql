BeforeExecute
-- SqlServer.2005

CREATE TABLE [Issue1554FluentTable]
(
	[Id]              Int         NOT NULL,
	[ClaimedKeyType]  NVarChar(3) NOT NULL,
	[ClaimedKeyTypeN] NVarChar(3)     NULL,

	CONSTRAINT [PK_Issue1554FluentTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(3) -- String
SET     @ClaimedKeyType = N'EC'
DECLARE @ClaimedKeyTypeN NVarChar(3) -- String
SET     @ClaimedKeyTypeN = N'EC'

INSERT INTO [Issue1554FluentTable]
(
	[Id],
	[ClaimedKeyType],
	[ClaimedKeyTypeN]
)
VALUES
(
	@Id,
	@ClaimedKeyType,
	@ClaimedKeyTypeN
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [Issue1554FluentTable]


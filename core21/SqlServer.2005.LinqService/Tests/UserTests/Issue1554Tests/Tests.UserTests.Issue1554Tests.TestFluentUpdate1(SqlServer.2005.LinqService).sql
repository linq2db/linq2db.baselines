BeforeExecute
-- SqlServer.2005

CREATE TABLE [Issue1554FluentTable]
(
	[Id]              Int           NOT NULL,
	[ClaimedKeyType]  NVarChar(Max) NOT NULL,
	[ClaimedKeyTypeN] NVarChar(Max)     NULL,

	CONSTRAINT [PK_Issue1554FluentTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(4000) -- String
SET     @ClaimedKeyType = N'RSA'
DECLARE @ClaimedKeyTypeN NVarChar(4000) -- String
SET     @ClaimedKeyTypeN = N'RSA'

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
DECLARE @ClaimedKeyType NVarChar(4000) -- String
SET     @ClaimedKeyType = N'EC'
DECLARE @ClaimedKeyTypeN NVarChar(4000) -- String
SET     @ClaimedKeyTypeN = N'EC'

UPDATE
	[p]
SET
	[p].[ClaimedKeyType] = @ClaimedKeyType,
	[p].[ClaimedKeyTypeN] = @ClaimedKeyTypeN
FROM
	[Issue1554FluentTable] [p]
WHERE
	[p].[Id] = 0

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554FluentTable] [t1]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Issue1554FluentTable]


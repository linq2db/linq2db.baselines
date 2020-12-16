BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Issue1554FluentTable]
(
	[Id]              Int         NOT NULL,
	[ClaimedKeyType]  NVarChar(3) NOT NULL,
	[ClaimedKeyTypeN] NVarChar(3)     NULL,

	CONSTRAINT [PK_Issue1554FluentTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType UniVarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN UniVarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

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
-- Sybase.Managed Sybase
DECLARE @ClaimedKeyType UniVarChar(2) -- String
SET     @ClaimedKeyType = 'EC'

UPDATE
	[Issue1554FluentTable]
SET
	[p].[ClaimedKeyType] = @ClaimedKeyType,
	[p].[ClaimedKeyTypeN] = @ClaimedKeyType
FROM
	[Issue1554FluentTable] [p]
WHERE
	[p].[Id] = 0

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554FluentTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [Issue1554FluentTable]


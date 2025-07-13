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
DECLARE @ClaimedKeyTypeN UniVarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	[Issue1554FluentTable]
SET
	[ClaimedKeyType] = @ClaimedKeyType,
	[ClaimedKeyTypeN] = @ClaimedKeyTypeN
WHERE
	[Issue1554FluentTable].[Id] = 0

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554FluentTable] [t1]


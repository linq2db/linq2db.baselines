BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Issue1554FluentTable]
(
	[Id]              INTEGER  NOT NULL,
	[ClaimedKeyType]  NVarChar NOT NULL,
	[ClaimedKeyTypeN] NVarChar     NULL,

	CONSTRAINT [PK_Issue1554FluentTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN NVarChar(3) -- String
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
-- SQLite.Classic SQLite
DECLARE @ClaimedKeyType NVarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN NVarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	[Issue1554FluentTable]
SET
	[ClaimedKeyType] = @ClaimedKeyType,
	[ClaimedKeyTypeN] = @ClaimedKeyTypeN
WHERE
	[Issue1554FluentTable].[Id] = 0

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554FluentTable] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Issue1554FluentTable]


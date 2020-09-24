BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [Issue1554Table]
(
	[Id]              INTEGER  NOT NULL,
	[ClaimedKeyType]  NVarChar NOT NULL,
	[ClaimedKeyTypeN] NVarChar     NULL,

	CONSTRAINT [PK_Issue1554Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN NVarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

INSERT INTO [Issue1554Table]
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554Table] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [Issue1554Table]


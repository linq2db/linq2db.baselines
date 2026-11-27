-- SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN NVarChar -- String
SET     @ClaimedKeyTypeN = NULL

INSERT INTO [FluentMappedEnumKeyRecord]
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

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[FluentMappedEnumKeyRecord] [t1]
LIMIT 2


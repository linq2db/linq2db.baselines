-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN NVarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO [MappedEnumKeyRecord]
(
	[Id],
	[ClaimedKeyType],
	[ClaimedKeyTypeN]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @ClaimedKeyType NVarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN NVarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	[MappedEnumKeyRecord] [p]
SET
	[p].[ClaimedKeyType] = ?,
	[p].[ClaimedKeyTypeN] = ?
WHERE
	[p].[Id] = 0

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[MappedEnumKeyRecord] [t1]


BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue1554Table]
(
	[Id]              Int         NOT NULL,
	[ClaimedKeyType]  NVarChar(3) NOT NULL,
	[ClaimedKeyTypeN] NVarChar(3)     NULL,

	CONSTRAINT [PK_Issue1554Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarWChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN VarWChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

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
-- Access AccessOleDb
DECLARE @ClaimedKeyType VarWChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyType VarWChar(2) -- String
SET     @ClaimedKeyType = 'EC'

UPDATE
	[Issue1554Table] [p]
SET
	[p].[ClaimedKeyType] = @ClaimedKeyType,
	[p].[ClaimedKeyTypeN] = @ClaimedKeyType
WHERE
	[p].[Id] = 0

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554Table] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1554Table]


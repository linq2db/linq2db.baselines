-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [aa]
(
	[bb] Int           NOT NULL,
	[cc] NVarChar(255)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @bb Integer -- Int32
SET     @bb = 99
DECLARE @cc VarWChar(5) -- String
SET     @cc = 'hallo'

INSERT INTO [aa]
(
	[bb],
	[cc]
)
VALUES
(
	@bb,
	@cc
)

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [aa]


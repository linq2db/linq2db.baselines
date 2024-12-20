BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [aa]
(
	[bb] Int           NOT NULL,
	[cc] NVarChar(255)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [aa]


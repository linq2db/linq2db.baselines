BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue681Table]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue681Table]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[Database\TestData].[Issue681Table] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue681Table]


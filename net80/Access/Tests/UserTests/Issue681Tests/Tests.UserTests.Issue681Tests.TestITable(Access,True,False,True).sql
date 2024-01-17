BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue681Table]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue681Table]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[Issue681Table] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue681Table]


BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue681Table]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue681Table]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[Database\TestData.ODBC.mdb].[Issue681Table] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue681Table]


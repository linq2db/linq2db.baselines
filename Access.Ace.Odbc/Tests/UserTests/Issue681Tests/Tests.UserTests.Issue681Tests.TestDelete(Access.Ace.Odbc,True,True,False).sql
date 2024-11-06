BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue681Table]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue681Table]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @ID  -- Int32
SET     @ID = 5

DELETE FROM
	[Database\TestData.ODBC.mdb].[Issue681Table] [t1]
WHERE
	[t1].[ID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue681Table]


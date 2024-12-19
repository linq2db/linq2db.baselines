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
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [Database\TestData.ODBC.mdb].[Issue681Table]
(
	[ID],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue681Table]


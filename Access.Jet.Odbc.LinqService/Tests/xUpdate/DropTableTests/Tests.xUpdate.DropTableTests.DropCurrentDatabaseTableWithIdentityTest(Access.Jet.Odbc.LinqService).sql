BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DROP TABLE [DropTableTestID]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DROP TABLE [DropTableTestID]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


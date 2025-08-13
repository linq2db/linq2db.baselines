BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [DropTableTestID]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [DropTableTestID]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


-- Access.Jet.Odbc AccessODBC

DROP TABLE [DropTableTestID]

-- Access.Jet.Odbc AccessODBC

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.Odbc AccessODBC

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- Access.Jet.Odbc AccessODBC

DROP TABLE [DropTableTestID]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


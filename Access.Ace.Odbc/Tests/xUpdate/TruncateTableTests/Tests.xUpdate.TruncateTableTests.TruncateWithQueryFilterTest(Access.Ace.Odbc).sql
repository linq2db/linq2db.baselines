-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestTrun]

-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestTrunDetail]

-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TestTrunDetail]
(
	[ID]         Int NOT NULL,
	[TestTrunID] Int NOT NULL,
	[IsActive]   Bit NOT NULL,

	CONSTRAINT [PK_TestTrunDetail] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Ace.Odbc AccessODBC

DELETE FROM [TestTrun]

-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestTrun]

-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestTrunDetail]


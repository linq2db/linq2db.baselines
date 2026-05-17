-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestTrun]

-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestTrunDetail]

-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TestTrunDetail]
(
	[ID]         Int NOT NULL,
	[TestTrunID] Int NOT NULL,
	[IsActive]   Bit NOT NULL,

	CONSTRAINT [PK_TestTrunDetail] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.Odbc AccessODBC

DELETE FROM [TestTrun]

-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestTrun]

-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestTrunDetail]


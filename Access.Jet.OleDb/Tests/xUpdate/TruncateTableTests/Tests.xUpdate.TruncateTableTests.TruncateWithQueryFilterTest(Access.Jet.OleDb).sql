-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestTrun]

-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestTrunDetail]

-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TestTrunDetail]
(
	[ID]         Int NOT NULL,
	[TestTrunID] Int NOT NULL,
	[IsActive]   Bit NOT NULL,

	CONSTRAINT [PK_TestTrunDetail] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.OleDb AccessOleDb

DELETE FROM [TestTrun]

-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestTrun]

-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestTrunDetail]


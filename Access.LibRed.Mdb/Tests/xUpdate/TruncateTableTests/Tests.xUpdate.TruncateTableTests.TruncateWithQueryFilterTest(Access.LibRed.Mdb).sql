-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TestTrun]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TestTrunDetail]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [TestTrunDetail]
(
	[ID]         Int NOT NULL,
	[TestTrunID] Int NOT NULL,
	[IsActive]   Bit NOT NULL,

	CONSTRAINT [PK_TestTrunDetail] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM [TestTrun]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TestTrun]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TestTrunDetail]


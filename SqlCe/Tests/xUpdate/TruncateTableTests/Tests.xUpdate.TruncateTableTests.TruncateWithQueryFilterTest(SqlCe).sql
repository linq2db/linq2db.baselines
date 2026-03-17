-- SqlCe

DROP TABLE [TestTrun]

-- SqlCe

DROP TABLE [TestTrunDetail]

-- SqlCe

CREATE TABLE [TestTrunDetail]
(
	[ID]         Int NOT NULL,
	[TestTrunID] Int NOT NULL,
	[IsActive]   Bit NOT NULL,

	CONSTRAINT [PK_TestTrunDetail] PRIMARY KEY ([ID])
)

-- SqlCe

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY ([ID])
)

-- SqlCe

DELETE FROM [TestTrun]

-- SqlCe

DROP TABLE [TestTrun]

-- SqlCe

DROP TABLE [TestTrunDetail]


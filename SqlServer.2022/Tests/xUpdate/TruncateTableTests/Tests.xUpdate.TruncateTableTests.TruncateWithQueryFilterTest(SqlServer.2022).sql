-- SqlServer.2022

DROP TABLE IF EXISTS [TestTrun]

-- SqlServer.2022

DROP TABLE IF EXISTS [TestTrunDetail]

-- SqlServer.2022

CREATE TABLE [TestTrunDetail]
(
	[ID]         Int NOT NULL,
	[TestTrunID] Int NOT NULL,
	[IsActive]   Bit NOT NULL,

	CONSTRAINT [PK_TestTrunDetail] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2022

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2022

TRUNCATE TABLE [TestTrun]

-- SqlServer.2022

DROP TABLE [TestTrun]

-- SqlServer.2022

DROP TABLE [TestTrunDetail]


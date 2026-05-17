-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TestTrun]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TestTrunDetail]

-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [TestTrunDetail]
(
	[ID]         Int NOT NULL,
	[TestTrunID] Int NOT NULL,
	[IsActive]   Bit NOT NULL,

	CONSTRAINT [PK_TestTrunDetail] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2019.MS SqlServer.2019

TRUNCATE TABLE [TestTrun]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE [TestTrun]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE [TestTrunDetail]


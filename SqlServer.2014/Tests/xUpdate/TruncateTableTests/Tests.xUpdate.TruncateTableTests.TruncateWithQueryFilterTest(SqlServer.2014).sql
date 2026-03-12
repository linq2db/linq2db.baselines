-- SqlServer.2014

IF (OBJECT_ID(N'[TestTrun]', N'U') IS NOT NULL)
	DROP TABLE [TestTrun]

-- SqlServer.2014

IF (OBJECT_ID(N'[TestTrunDetail]', N'U') IS NOT NULL)
	DROP TABLE [TestTrunDetail]

-- SqlServer.2014

CREATE TABLE [TestTrunDetail]
(
	[ID]         Int NOT NULL,
	[TestTrunID] Int NOT NULL,
	[IsActive]   Bit NOT NULL,

	CONSTRAINT [PK_TestTrunDetail] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2014

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2014

TRUNCATE TABLE [TestTrun]

-- SqlServer.2014

DROP TABLE [TestTrun]

-- SqlServer.2014

DROP TABLE [TestTrunDetail]


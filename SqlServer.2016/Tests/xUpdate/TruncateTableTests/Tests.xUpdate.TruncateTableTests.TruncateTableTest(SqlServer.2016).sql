-- SqlServer.2016

DROP TABLE IF EXISTS [TestTrun]

-- SqlServer.2016

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2016

TRUNCATE TABLE [TestTrun]

-- SqlServer.2016

DROP TABLE [TestTrun]


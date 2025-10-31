-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TestTrun]

-- SqlServer.Contained SqlServer.2019

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.Contained SqlServer.2019

TRUNCATE TABLE [TestTrun]

-- SqlServer.Contained SqlServer.2019

DROP TABLE [TestTrun]


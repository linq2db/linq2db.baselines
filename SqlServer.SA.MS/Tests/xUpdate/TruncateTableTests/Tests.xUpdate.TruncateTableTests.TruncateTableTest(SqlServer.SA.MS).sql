BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TestTrun]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [TestTrun]
(
	[ID]     Int     NOT NULL,
	[Field1] Decimal NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

TRUNCATE TABLE [TestTrun]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE [TestTrun]


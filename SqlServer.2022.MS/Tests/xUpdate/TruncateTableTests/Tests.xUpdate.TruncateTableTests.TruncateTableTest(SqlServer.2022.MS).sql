BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TestTrun]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

TRUNCATE TABLE [TestTrun]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE [TestTrun]


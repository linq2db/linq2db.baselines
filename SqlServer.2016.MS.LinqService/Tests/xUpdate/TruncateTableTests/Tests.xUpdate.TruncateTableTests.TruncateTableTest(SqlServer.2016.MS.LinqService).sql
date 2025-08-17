BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DROP TABLE IF EXISTS [TestTrun]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

TRUNCATE TABLE [TestTrun]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DROP TABLE [TestTrun]


BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

IF (OBJECT_ID(N'[TestTrun]', N'U') IS NOT NULL)
	DROP TABLE [TestTrun]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

TRUNCATE TABLE [TestTrun]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

DROP TABLE [TestTrun]


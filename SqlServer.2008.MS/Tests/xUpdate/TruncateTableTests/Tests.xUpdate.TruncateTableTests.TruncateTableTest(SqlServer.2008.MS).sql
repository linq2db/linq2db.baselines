BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TestTrun]', N'U') IS NOT NULL)
	DROP TABLE [TestTrun]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

TRUNCATE TABLE [TestTrun]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

DROP TABLE [TestTrun]


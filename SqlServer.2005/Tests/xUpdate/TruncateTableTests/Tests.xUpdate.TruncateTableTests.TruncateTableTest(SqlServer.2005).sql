BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TestTrun]', N'U') IS NOT NULL)
	DROP TABLE [TestTrun]

BeforeExecute
-- SqlServer.2005

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2005

TRUNCATE TABLE [TestTrun]

BeforeExecute
-- SqlServer.2005

DROP TABLE [TestTrun]


BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

IF (OBJECT_ID(N'[TestTrun]', N'U') IS NOT NULL)
	DROP TABLE [TestTrun]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [TestTrun]
(
	[ID]     Int     NOT NULL,
	[Field1] Decimal NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

TRUNCATE TABLE [TestTrun]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [TestTrun]


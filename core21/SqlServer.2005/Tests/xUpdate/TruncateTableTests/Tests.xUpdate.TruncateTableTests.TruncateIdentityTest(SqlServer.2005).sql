BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TestIdTrun]', N'U') IS NOT NULL)
	DROP TABLE [TestIdTrun]

BeforeExecute
-- SqlServer.2005

CREATE TABLE [TestIdTrun]
(
	[ID]     Int      NOT NULL IDENTITY,
	[Field1] Decimal  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2005

TRUNCATE TABLE [TestIdTrun]

BeforeExecute
-- SqlServer.2005

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [TestIdTrun]


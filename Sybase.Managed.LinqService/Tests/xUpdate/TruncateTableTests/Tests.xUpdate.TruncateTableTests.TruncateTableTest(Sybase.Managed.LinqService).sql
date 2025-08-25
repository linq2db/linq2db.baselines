BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'TestTrun') IS NOT NULL)
	DROP TABLE [TestTrun]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] DECIMAL(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

TRUNCATE TABLE [TestTrun]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DROP TABLE [TestTrun]


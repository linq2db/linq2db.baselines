BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTrun') IS NOT NULL)
	DROP TABLE [TestTrun]

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] DECIMAL(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Sybase.Managed Sybase

TRUNCATE TABLE [TestTrun]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [TestTrun]


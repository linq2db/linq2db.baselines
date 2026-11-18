-- SqlServer.CS.MS SqlServer.2025
DROP TABLE IF EXISTS [TestTrun]

-- SqlServer.CS.MS SqlServer.2025
CREATE TABLE [TestTrun]
(
	[ID]     Int             NOT NULL,
	[Field1] Decimal(18, 10) NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.CS.MS SqlServer.2025
TRUNCATE TABLE [TestTrun]

-- SqlServer.CS.MS SqlServer.2025
DROP TABLE [TestTrun]


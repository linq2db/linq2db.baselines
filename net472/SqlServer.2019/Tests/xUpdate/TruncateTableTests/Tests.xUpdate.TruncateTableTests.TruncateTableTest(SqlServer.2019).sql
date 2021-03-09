﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [TestTrun]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [TestTrun]
(
	[ID]     Int     NOT NULL,
	[Field1] Decimal NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

TRUNCATE TABLE [TestTrun]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [TestTrun]


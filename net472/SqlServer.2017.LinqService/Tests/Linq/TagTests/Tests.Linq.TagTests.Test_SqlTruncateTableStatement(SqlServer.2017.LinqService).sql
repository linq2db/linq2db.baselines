﻿BeforeExecute
-- SqlServer.2017

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017

/* My Test */
TRUNCATE TABLE [TestTable]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [TestTable]


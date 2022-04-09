﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

/* My Test */
DELETE [t1]
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TestTable]


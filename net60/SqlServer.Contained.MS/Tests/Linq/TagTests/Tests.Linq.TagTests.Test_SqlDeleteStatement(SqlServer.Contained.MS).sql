﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[TestTable]', N'U') IS NULL)
	CREATE TABLE [TestTable]
	(
		[Id] Int NOT NULL,
		[Fd] Int     NULL,

		CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

/* My Test */
DELETE [t1]
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TestTable]


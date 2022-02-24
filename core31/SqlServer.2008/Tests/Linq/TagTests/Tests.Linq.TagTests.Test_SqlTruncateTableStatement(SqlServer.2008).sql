﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008

/* My Test */
TRUNCATE TABLE [TestTable]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestTable]', N'U') IS NOT NULL)
	DROP TABLE [TestTable]


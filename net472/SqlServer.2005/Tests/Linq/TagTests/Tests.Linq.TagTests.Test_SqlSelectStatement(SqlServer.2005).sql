﻿BeforeExecute
-- SqlServer.2005

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

/* My Test */
SELECT
	[t1].[Id],
	[t1].[Fd]
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TestTable]', N'U') IS NOT NULL)
	DROP TABLE [TestTable]


﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

/* My Test */
UPDATE
	[t1]
SET
	[t1].[Id] = 1
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[TestTable]', N'U') IS NOT NULL)
	DROP TABLE [TestTable]


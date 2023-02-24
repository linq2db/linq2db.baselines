﻿BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[TestTable]', N'U') IS NULL)
	CREATE TABLE [TestTable]
	(
		[Id] Int NOT NULL,
		[Fd] Int     NULL,

		CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016

/* My Test */
INSERT INTO [TestTable]
(
	[Id]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TestTable]


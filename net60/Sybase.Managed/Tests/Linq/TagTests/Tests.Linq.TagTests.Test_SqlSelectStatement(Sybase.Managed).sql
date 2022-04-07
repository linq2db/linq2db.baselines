﻿BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

/* My Test */
SELECT
	[t1].[Id],
	[t1].[Fd]
FROM
	[TestTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTable') IS NOT NULL)
	DROP TABLE [TestTable]


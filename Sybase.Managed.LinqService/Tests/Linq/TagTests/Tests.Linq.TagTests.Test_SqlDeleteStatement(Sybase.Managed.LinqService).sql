﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTable') IS NOT NULL)
	DROP TABLE [TestTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTable') IS NULL)
	EXECUTE('
		CREATE TABLE [TestTable]
		(
			[Id] Int NOT NULL,
			[Fd] Int     NULL,

			CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

/* My Test */
DELETE FROM [TestTable]
FROM
	[TestTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTable') IS NOT NULL)
	DROP TABLE [TestTable]


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
MERGE INTO [TestTable] [t1]
USING (SELECT 1 AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[Fd] = 2
WHEN NOT MATCHED THEN
	INSERT
	(
		[Id],
		[Fd]
	)
	VALUES
	(
		1,
		2
	);

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestTable]', N'U') IS NOT NULL)
	DROP TABLE [TestTable]


﻿BeforeExecute
-- SqlServer.2016

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

DROP TABLE IF EXISTS [TestTable]


﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

/* My Test */
MERGE INTO [TestTable] [t1]
USING (SELECT 1 AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Fd] = 2
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


-- SqlServer.2017

MERGE INTO [Issue5289Table] [t1]
USING (SELECT 1 AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[PictureId] = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		[Id],
		[PictureId],
		[Deleted]
	)
	VALUES
	(
		1,
		2,
		0
	);

-- SqlServer.2017

SELECT TOP (2)
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[Issue5289Table] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1

-- SqlServer.2017

MERGE INTO [Issue5289Table] [t1]
USING (SELECT 1 AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[PictureId] = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		[Id],
		[PictureId],
		[Deleted]
	)
	VALUES
	(
		1,
		2,
		0
	);

-- SqlServer.2017

SELECT TOP (2)
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[Issue5289Table] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1


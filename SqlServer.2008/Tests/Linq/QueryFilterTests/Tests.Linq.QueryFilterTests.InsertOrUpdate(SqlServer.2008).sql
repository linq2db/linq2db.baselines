-- SqlServer.2008

MERGE INTO [Issue5289Table] [r]
USING (SELECT 1 AS [Id]) [s] ON
(
	[r].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[PictureId] = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		[Id],
		[PictureId]
	)
	VALUES
	(
		1,
		2
	);

-- SqlServer.2008

SELECT TOP (2)
	[r].[Id],
	[r].[PictureId]
FROM
	[Issue5289Table] [r]
WHERE
	([r].[Deleted] = 0 OR [r].[Deleted] IS NULL) AND [r].[Id] = 1

-- SqlServer.2008

MERGE INTO [Issue5289Table] [r]
USING (SELECT 1 AS [Id]) [s] ON
(
	[r].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[PictureId] = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		[Id],
		[PictureId]
	)
	VALUES
	(
		1,
		2
	);

-- SqlServer.2008

SELECT TOP (2)
	[r].[Id],
	[r].[PictureId]
FROM
	[Issue5289Table] [r]
WHERE
	([r].[Deleted] = 0 OR [r].[Deleted] IS NULL) AND [r].[Id] = 1


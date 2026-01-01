-- Sybase.Managed Sybase

UPDATE
	[Issue5289Table]
SET
	[PictureId] = 3
FROM
	[Issue5289Table] [t1]
WHERE
	[t1].[Id] = 1

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Issue5289Table]
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
	)
END

-- Sybase.Managed Sybase

SELECT TOP 2
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[Issue5289Table] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1

-- Sybase.Managed Sybase

UPDATE
	[Issue5289Table]
SET
	[PictureId] = 3
FROM
	[Issue5289Table] [t1]
WHERE
	[t1].[Id] = 1

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Issue5289Table]
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
	)
END

-- Sybase.Managed Sybase

SELECT TOP 2
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[Issue5289Table] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1


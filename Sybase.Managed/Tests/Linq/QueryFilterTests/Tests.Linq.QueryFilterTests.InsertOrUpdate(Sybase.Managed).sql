-- Sybase.Managed Sybase
UPDATE
	[SoftDeletedPictureTable]
SET
	[PictureId] = 3
FROM
	[SoftDeletedPictureTable] [t1]
WHERE
	[t1].[Id] = 1

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [SoftDeletedPictureTable]
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
	[SoftDeletedPictureTable] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1

-- Sybase.Managed Sybase
UPDATE
	[SoftDeletedPictureTable]
SET
	[PictureId] = 3
FROM
	[SoftDeletedPictureTable] [t1]
WHERE
	[t1].[Id] = 1

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [SoftDeletedPictureTable]
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
	[SoftDeletedPictureTable] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1


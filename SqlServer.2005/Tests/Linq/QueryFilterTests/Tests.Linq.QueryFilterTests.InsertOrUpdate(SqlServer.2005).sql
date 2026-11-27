-- SqlServer.2005
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

-- SqlServer.2005
SELECT TOP (2)
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[SoftDeletedPictureTable] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1

-- SqlServer.2005
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

-- SqlServer.2005
SELECT TOP (2)
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[SoftDeletedPictureTable] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1


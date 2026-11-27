-- SqlCe
UPDATE
	[SoftDeletedPictureTable]
SET
	[PictureId] = 3
WHERE
	[SoftDeletedPictureTable].[Id] = 1

-- SqlCe
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

-- SqlCe
SELECT TOP (2)
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[SoftDeletedPictureTable] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1

-- SqlCe
UPDATE
	[SoftDeletedPictureTable]
SET
	[PictureId] = 3
WHERE
	[SoftDeletedPictureTable].[Id] = 1

-- SqlCe
SELECT TOP (2)
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[SoftDeletedPictureTable] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1


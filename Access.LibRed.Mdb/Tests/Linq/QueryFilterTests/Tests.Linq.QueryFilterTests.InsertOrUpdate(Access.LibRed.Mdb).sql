-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[SoftDeletedPictureTable] [t1]
SET
	[t1].[PictureId] = 3
WHERE
	[t1].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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
	False
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[SoftDeletedPictureTable] [r]
WHERE
	NOT [r].[Deleted] AND [r].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[SoftDeletedPictureTable] [t1]
SET
	[t1].[PictureId] = 3
WHERE
	[t1].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[SoftDeletedPictureTable] [r]
WHERE
	NOT [r].[Deleted] AND [r].[Id] = 1


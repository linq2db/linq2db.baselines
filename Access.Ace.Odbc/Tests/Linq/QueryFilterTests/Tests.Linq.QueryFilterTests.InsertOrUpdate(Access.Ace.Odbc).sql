-- Access.Ace.Odbc AccessODBC
UPDATE
	[SoftDeletedPictureTable] [t1]
SET
	[t1].[PictureId] = 3
WHERE
	[t1].[Id] = 1

-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[SoftDeletedPictureTable] [r]
WHERE
	NOT [r].[Deleted] AND [r].[Id] = 1

-- Access.Ace.Odbc AccessODBC
UPDATE
	[SoftDeletedPictureTable] [t1]
SET
	[t1].[PictureId] = 3
WHERE
	[t1].[Id] = 1

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[SoftDeletedPictureTable] [r]
WHERE
	NOT [r].[Deleted] AND [r].[Id] = 1


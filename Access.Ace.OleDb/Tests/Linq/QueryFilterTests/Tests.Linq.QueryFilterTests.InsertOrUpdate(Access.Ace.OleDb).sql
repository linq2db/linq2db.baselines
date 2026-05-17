-- Access.Ace.OleDb AccessOleDb

UPDATE
	[Issue5289Table] [t1]
SET
	[t1].[PictureId] = 3
WHERE
	[t1].[Id] = 1

-- Access.Ace.OleDb AccessOleDb

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
	False
)

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[Issue5289Table] [r]
WHERE
	NOT [r].[Deleted] AND [r].[Id] = 1

-- Access.Ace.OleDb AccessOleDb

UPDATE
	[Issue5289Table] [t1]
SET
	[t1].[PictureId] = 3
WHERE
	[t1].[Id] = 1

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[Issue5289Table] [r]
WHERE
	NOT [r].[Deleted] AND [r].[Id] = 1


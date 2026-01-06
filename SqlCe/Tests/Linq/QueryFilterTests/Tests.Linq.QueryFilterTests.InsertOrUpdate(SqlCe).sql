-- SqlCe

UPDATE
	[Issue5289Table]
SET
	[PictureId] = 3
WHERE
	[Issue5289Table].[Id] = 1

-- SqlCe

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

-- SqlCe

SELECT TOP (2)
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[Issue5289Table] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1

-- SqlCe

UPDATE
	[Issue5289Table]
SET
	[PictureId] = 3
WHERE
	[Issue5289Table].[Id] = 1

-- SqlCe

SELECT TOP (2)
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[Issue5289Table] [r]
WHERE
	[r].[Deleted] = 0 AND [r].[Id] = 1


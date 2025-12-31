-- SqlCe

UPDATE
	[Issue5289Table]
SET
	[PictureId] = 3
WHERE
	([Issue5289Table].[Deleted] = 0 OR [Issue5289Table].[Deleted] IS NULL) AND
	[Issue5289Table].[Id] = 1

-- SqlCe

INSERT INTO [Issue5289Table]
(
	[Id],
	[PictureId]
)
VALUES
(
	1,
	2
)

-- SqlCe

SELECT TOP (2)
	[r].[Id],
	[r].[PictureId]
FROM
	[Issue5289Table] [r]
WHERE
	([r].[Deleted] = 0 OR [r].[Deleted] IS NULL) AND [r].[Id] = 1

-- SqlCe

UPDATE
	[Issue5289Table]
SET
	[PictureId] = 3
WHERE
	([Issue5289Table].[Deleted] = 0 OR [Issue5289Table].[Deleted] IS NULL) AND
	[Issue5289Table].[Id] = 1

-- SqlCe

SELECT TOP (2)
	[r].[Id],
	[r].[PictureId]
FROM
	[Issue5289Table] [r]
WHERE
	([r].[Deleted] = 0 OR [r].[Deleted] IS NULL) AND [r].[Id] = 1


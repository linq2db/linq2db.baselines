﻿BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO [InsertEntity]
(
	[Id],
	[Name],
	[IsDeleted]
)
SELECT
	[e].[Id] + 100,
	[e].[Name],
	[e].[IsDeleted]
FROM
	[InsertEntity] [e]
WHERE
	NOT [e].[IsDeleted]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[e].[Id],
	[e].[Name],
	[e].[IsDeleted]
FROM
	[InsertEntity] [e]
WHERE
	NOT [e].[IsDeleted]


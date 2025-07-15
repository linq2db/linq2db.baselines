﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'test2'

INSERT INTO [InsertEntity]
(
	[Id],
	[Name],
	[IsDeleted]
)
VALUES
(
	@Id,
	@Name,
	0
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[Name],
	[e].[IsDeleted]
FROM
	[InsertEntity] [e]
WHERE
	NOT [e].[IsDeleted]


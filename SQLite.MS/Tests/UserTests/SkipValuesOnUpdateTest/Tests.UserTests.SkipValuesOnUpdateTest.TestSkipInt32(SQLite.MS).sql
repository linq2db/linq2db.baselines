﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Smith'
DECLARE @Age  -- Int32
SET     @Age = 2

INSERT INTO [PR_1598_Update_Table]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age  -- Int32
SET     @Age = 15
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Update_Table].[Id] = @Id

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Table]
SET
	[Name] = @Name
WHERE
	[PR_1598_Update_Table].[Id] = @Id

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT 1


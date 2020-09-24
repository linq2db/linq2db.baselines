﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [PR_1598_Update_Table]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  INTEGER           NULL,

	CONSTRAINT [PK_PR_1598_Update_Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age  -- Int32
SET     @Age = 14

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jacob'
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Age  -- Int32
SET     @Age = 22
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Table]
SET
	[Age] = @Age
WHERE
	[PR_1598_Update_Table].[Id] = @Id

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [PR_1598_Update_Table]


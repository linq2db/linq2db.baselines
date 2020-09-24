﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [PR_1598_Insert_Enum_Table]
(
	[Id]     INTEGER       NOT NULL,
	[Name]   NVarChar(255)     NULL,
	[Age]    INTEGER           NULL,
	[Gender] NVarChar          NULL,

	CONSTRAINT [PK_PR_1598_Insert_Enum_Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age  -- Int32
SET     @Age = 20
DECLARE @Gender NVarChar(4) -- String
SET     @Gender = 'Male'

INSERT INTO [PR_1598_Insert_Enum_Table]
(
	[Id],
	[Name],
	[Age],
	[Gender]
)
VALUES
(
	@Id,
	@Name,
	@Age,
	@Gender
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Insert_Enum_Table] [t]
WHERE
	[t].[Id] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jenny'
DECLARE @Age  -- Int32
SET     @Age = 25

INSERT INTO [PR_1598_Insert_Enum_Table]
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Insert_Enum_Table] [t]
WHERE
	[t].[Id] = 2
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [PR_1598_Insert_Enum_Table]


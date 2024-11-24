BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [PR_1598_Update_Enum_Table]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [PR_1598_Update_Enum_Table]
(
	[Id]     Int           NOT NULL,
	[Name]   NVarChar(255)     NULL,
	[Age]    Int               NULL,
	[Gender] NVarChar(6)       NULL,

	CONSTRAINT [PK_PR_1598_Update_Enum_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age  -- Int32
SET     @Age = 20
DECLARE @Gender NVarChar(6) -- String
SET     @Gender = 'Female'

INSERT INTO [PR_1598_Update_Enum_Table]
(
	[Id],
	[Name],
	[Age],
	[Gender]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age  -- Int32
SET     @Age = 2
DECLARE @Gender NVarChar(4) -- String
SET     @Gender = 'Male'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table] [t1]
SET
	[t1].[Name] = ?,
	[t1].[Age] = ?,
	[t1].[Gender] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Francine'
DECLARE @Age  -- Int32
SET     @Age = 20
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table] [t1]
SET
	[t1].[Name] = ?,
	[t1].[Age] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [PR_1598_Update_Enum_Table]


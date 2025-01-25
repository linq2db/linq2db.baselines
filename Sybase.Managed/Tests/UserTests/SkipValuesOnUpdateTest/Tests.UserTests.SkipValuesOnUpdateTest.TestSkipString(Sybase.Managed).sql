BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PR_1598_Update_Table') IS NOT NULL)
	DROP TABLE [PR_1598_Update_Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PR_1598_Update_Table') IS NULL)
	EXECUTE('
		CREATE TABLE [PR_1598_Update_Table]
		(
			[Id]   Int           NOT NULL,
			[Name] NVarChar(255)     NULL,
			[Age]  Int               NULL,

			CONSTRAINT [PK_PR_1598_Update_Table] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name UniVarChar(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'Jacob'
DECLARE @Age Integer -- Int32
SET     @Age = 15
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Update_Table].[Id] = @Id

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Age Integer -- Int32
SET     @Age = 22
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Table]
SET
	[Age] = @Age
WHERE
	[PR_1598_Update_Table].[Id] = @Id

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PR_1598_Update_Table') IS NOT NULL)
	DROP TABLE [PR_1598_Update_Table]


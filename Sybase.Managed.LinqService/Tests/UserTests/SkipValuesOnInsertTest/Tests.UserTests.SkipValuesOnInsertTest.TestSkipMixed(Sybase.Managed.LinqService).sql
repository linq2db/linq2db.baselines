BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Integer -- Int32
SET     @Age = 20

INSERT INTO [PR_1598_Mixed_Table]
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
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Mixed_Table]
SET
	[Age] = @Age
WHERE
	[PR_1598_Mixed_Table].[Id] = @Id

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Age Integer -- Int32
SET     @Age = 25

INSERT INTO [PR_1598_Mixed_Table]
(
	[Id],
	[Age]
)
VALUES
(
	@Id,
	@Age
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Integer -- Int32
SET     @Age = 25
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	[PR_1598_Mixed_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Mixed_Table].[Id] = @Id

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2


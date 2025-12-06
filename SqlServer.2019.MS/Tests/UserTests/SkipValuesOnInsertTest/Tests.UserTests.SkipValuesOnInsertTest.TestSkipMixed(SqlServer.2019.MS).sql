-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jason'
DECLARE @Age Int -- Int32
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

-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Mixed_Table]
SET
	[Age] = @Age
WHERE
	[PR_1598_Mixed_Table].[Id] = @Id

-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Age Int -- Int32
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

-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jessy'
DECLARE @Age Int -- Int32
SET     @Age = 25
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[PR_1598_Mixed_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Mixed_Table].[Id] = @Id

-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2


-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Manuel'
DECLARE @Age Int -- Int32
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

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jacob'
DECLARE @Age Int -- Int32
SET     @Age = 15
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Update_Table].[Id] = @Id

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Age Int -- Int32
SET     @Age = 22
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Table]
SET
	[Age] = @Age
WHERE
	[PR_1598_Update_Table].[Id] = @Id

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1


-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Smith'

INSERT INTO [PR_1598_Insert_Table]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Tommy'

INSERT INTO [PR_1598_Insert_Table]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 2


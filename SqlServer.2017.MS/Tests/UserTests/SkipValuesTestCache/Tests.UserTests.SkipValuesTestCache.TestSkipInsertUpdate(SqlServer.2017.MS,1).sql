BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'

INSERT INTO [PR_1598_Insert_Table_Cache]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Insert_Table_Cache]
SET
	[Name] = @Name
WHERE
	[PR_1598_Insert_Table_Cache].[Id] = @Id

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1


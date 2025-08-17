BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age Int -- Int32
SET     @Age = 2

INSERT INTO [PR_1598_Update_Fluent_Table]
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
-- SqlCe (asynchronously)

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Fluent_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Int -- Int32
SET     @Age = 18
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Fluent_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Update_Fluent_Table].[Id] = @Id

BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Fluent_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Fluent_Table]
SET
	[Name] = @Name
WHERE
	[PR_1598_Update_Fluent_Table].[Id] = @Id

BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Fluent_Table] [t]
WHERE
	[t].[Id] = 1


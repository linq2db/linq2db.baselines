BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Int -- Int32
SET     @Age = NULL

INSERT INTO [PR_1598_Update_Null_Table]
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
	[PR_1598_Update_Null_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Int -- Int32
SET     @Age = 2
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Null_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Update_Null_Table].[Id] = @Id

BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Null_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Null_Table]
SET
	[Name] = @Name
WHERE
	[PR_1598_Update_Null_Table].[Id] = @Id

BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Null_Table] [t]
WHERE
	[t].[Id] = 1


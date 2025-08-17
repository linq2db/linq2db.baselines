BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Max'
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Gender NVarChar(6) -- String
SET     @Gender = N'Female'

INSERT INTO [PR_1598_Update_Enum_Table]
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
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jack'
DECLARE @Age Int -- Int32
SET     @Age = 2
DECLARE @Gender NVarChar(6) -- String
SET     @Gender = N'Male'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table]
SET
	[Name] = @Name,
	[Age] = @Age,
	[Gender] = @Gender
WHERE
	[PR_1598_Update_Enum_Table].[Id] = @Id

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Francine'
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Update_Enum_Table].[Id] = @Id

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1


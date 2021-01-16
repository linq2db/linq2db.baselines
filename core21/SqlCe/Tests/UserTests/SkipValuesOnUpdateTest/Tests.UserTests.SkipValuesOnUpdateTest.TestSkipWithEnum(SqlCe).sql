BeforeExecute
-- SqlCe

CREATE TABLE [PR_1598_Update_Enum_Table]
(
	[Id]     Int           NOT NULL,
	[Name]   NVarChar(255)     NULL,
	[Age]    Int               NULL,
	[Gender] NVarChar(6)       NULL,

	CONSTRAINT [PK_PR_1598_Update_Enum_Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Int -- Int32
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
	@Id,
	@Name,
	@Age,
	@Gender
)

BeforeExecute
-- SqlCe
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Int -- Int32
SET     @Age = 2
DECLARE @Gender NVarChar(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table]
SET
	[PR_1598_Update_Enum_Table].[Name] = @Name,
	[PR_1598_Update_Enum_Table].[Age] = @Age,
	[PR_1598_Update_Enum_Table].[Gender] = @Gender
WHERE
	[PR_1598_Update_Enum_Table].[Id] = @Id

BeforeExecute
-- SqlCe
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table]
SET
	[PR_1598_Update_Enum_Table].[Name] = @Name,
	[PR_1598_Update_Enum_Table].[Age] = @Age
WHERE
	[PR_1598_Update_Enum_Table].[Id] = @Id

BeforeExecute
-- SqlCe

DROP TABLE [PR_1598_Update_Enum_Table]


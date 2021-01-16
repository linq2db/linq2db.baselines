BeforeExecute
-- SqlCe

CREATE TABLE [PR_1598_Update_Fluent_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Update_Fluent_Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Int -- Int32
SET     @Age = 18
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Fluent_Table]
SET
	[PR_1598_Update_Fluent_Table].[Name] = @Name,
	[PR_1598_Update_Fluent_Table].[Age] = @Age
WHERE
	[PR_1598_Update_Fluent_Table].[Id] = @Id

BeforeExecute
-- SqlCe
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Fluent_Table]
SET
	[PR_1598_Update_Fluent_Table].[Name] = @Name
WHERE
	[PR_1598_Update_Fluent_Table].[Id] = @Id

BeforeExecute
-- SqlCe

DROP TABLE [PR_1598_Update_Fluent_Table]


BeforeExecute
-- SqlCe

DROP TABLE [PR_1598_Insert_Null_Table]

BeforeExecute
-- SqlCe

CREATE TABLE [PR_1598_Insert_Null_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Insert_Null_Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO [PR_1598_Insert_Null_Table]
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
-- SqlCe

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Null_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlCe

DROP TABLE [PR_1598_Insert_Null_Table]


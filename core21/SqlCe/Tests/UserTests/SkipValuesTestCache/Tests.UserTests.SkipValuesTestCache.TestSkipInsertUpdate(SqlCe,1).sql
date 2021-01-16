BeforeExecute
-- SqlCe

CREATE TABLE [PR_1598_Insert_Table_Cache]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Insert_Table_Cache] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

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
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlCe
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Insert_Table_Cache]
SET
	[PR_1598_Insert_Table_Cache].[Name] = @Name
WHERE
	[PR_1598_Insert_Table_Cache].[Id] = @Id

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlCe

DROP TABLE [PR_1598_Insert_Table_Cache]


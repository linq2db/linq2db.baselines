BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Paul'
DECLARE @Age Int -- Int32
SET     @Age = 14

INSERT INTO [PR_1598_Insert_Table]
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

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Mary'
DECLARE @Age Int -- Int32
SET     @Age = 15

INSERT INTO [PR_1598_Insert_Table]
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

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 2


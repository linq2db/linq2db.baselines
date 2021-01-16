BeforeExecute
-- SqlServer.2005

CREATE TABLE [PR_1598_Update_Null_Table]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Age]  Int                NULL,

	CONSTRAINT [PK_PR_1598_Update_Null_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Tommy'
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
-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jack'
DECLARE @Age Int -- Int32
SET     @Age = 2
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age
FROM
	[PR_1598_Update_Null_Table] [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Franki'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[t1]
SET
	[t1].[Name] = @Name
FROM
	[PR_1598_Update_Null_Table] [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.2005

DROP TABLE [PR_1598_Update_Null_Table]


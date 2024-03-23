BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [PR_1598_Insert_Fluent_Table]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[PR_1598_Insert_Fluent_Table]', N'U') IS NULL)
	CREATE TABLE [PR_1598_Insert_Fluent_Table]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL,
		[Age]  Int                NULL,

		CONSTRAINT [PK_PR_1598_Insert_Fluent_Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = NULL

INSERT INTO [PR_1598_Insert_Fluent_Table]
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
-- SqlServer.2022

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Fluent_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [PR_1598_Insert_Fluent_Table]


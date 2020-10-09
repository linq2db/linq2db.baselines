BeforeExecute
-- Access AccessOleDb

CREATE TABLE [PR_1598_Insert_Fluent_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Insert_Fluent_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar -- String
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
-- Access AccessOleDb

SELECT TOP 1 
	[t].[Id], 
	[t].[Name], 
	[t].[Age]
FROM
	[PR_1598_Insert_Fluent_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [PR_1598_Insert_Fluent_Table]


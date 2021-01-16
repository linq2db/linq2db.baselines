BeforeExecute
-- SqlServer.2005

CREATE TABLE [PR_1598_Insert_Fluent_Table]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Age]  Int                NULL,

	CONSTRAINT [PK_PR_1598_Insert_Fluent_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005

DROP TABLE [PR_1598_Insert_Fluent_Table]


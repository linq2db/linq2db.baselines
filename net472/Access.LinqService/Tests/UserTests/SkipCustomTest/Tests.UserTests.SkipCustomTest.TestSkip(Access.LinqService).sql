﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [PR_1598_SkipCustom_Table]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [PR_1598_SkipCustom_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_SkipCustom_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 15

INSERT INTO [PR_1598_SkipCustom_Table]
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
-- Access AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_SkipCustom_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarWChar(3) -- String
SET     @Name = 'Max'

INSERT INTO [PR_1598_SkipCustom_Table]
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
	[PR_1598_SkipCustom_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- Access AccessOleDb

DROP TABLE [PR_1598_SkipCustom_Table]


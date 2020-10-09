BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [PR_1598_Insert_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Insert_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Age Integer -- Int32
SET     @Age = 14

INSERT INTO [PR_1598_Insert_Table]
(
	[Id],
	[Age]
)
VALUES
(
	@Id,
	@Age
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1 
	[t].[Id], 
	[t].[Name], 
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Age Integer -- Int32
SET     @Age = 15

INSERT INTO [PR_1598_Insert_Table]
(
	[Id],
	[Age]
)
VALUES
(
	@Id,
	@Age
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1 
	[t].[Id], 
	[t].[Name], 
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [PR_1598_Insert_Table]


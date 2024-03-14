BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [PR_1598_Insert_Table]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[PR_1598_Insert_Table]', N'U') IS NULL)
	CREATE TABLE [PR_1598_Insert_Table]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL,
		[Age]  Int                NULL,

		CONSTRAINT [PK_PR_1598_Insert_Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Age Int -- Int32
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
-- SqlServer.2016

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Age Int -- Int32
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
-- SqlServer.2016

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [PR_1598_Insert_Table]


BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [PR_1598_SkipCustom_Table]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[PR_1598_SkipCustom_Table]', N'U') IS NULL)
	CREATE TABLE [PR_1598_SkipCustom_Table]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL,
		[Age]  Int                NULL,

		CONSTRAINT [PK_PR_1598_SkipCustom_Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Age Int -- Int32
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
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_SkipCustom_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Max'

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
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_SkipCustom_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [PR_1598_SkipCustom_Table]


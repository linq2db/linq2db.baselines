BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PR_1598_Insert_Table]', N'U') IS NOT NULL)
	DROP TABLE [PR_1598_Insert_Table]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PR_1598_Insert_Table]', N'U') IS NULL)
	CREATE TABLE [PR_1598_Insert_Table]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL,
		[Age]  Int                NULL,

		CONSTRAINT [PK_PR_1598_Insert_Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Smith'

INSERT INTO [PR_1598_Insert_Table]
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
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Tommy'

INSERT INTO [PR_1598_Insert_Table]
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
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PR_1598_Insert_Table]', N'U') IS NOT NULL)
	DROP TABLE [PR_1598_Insert_Table]


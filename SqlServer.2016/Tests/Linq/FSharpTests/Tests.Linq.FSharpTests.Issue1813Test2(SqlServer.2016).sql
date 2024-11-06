BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Names]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Names]', N'U') IS NULL)
	CREATE TABLE [Names]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Addresses]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Addresses]', N'U') IS NULL)
	CREATE TABLE [Addresses]
	(
		[Id]   Int            NOT NULL,
		[Text] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'name1'

INSERT INTO [Names]
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
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'name2'

INSERT INTO [Names]
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
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'address'

INSERT INTO [Addresses]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2016

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Text]
FROM
	(
		SELECT DISTINCT
			[Item1].[Id]
		FROM
			[Names] [Item1]
	) [m_1]
		LEFT JOIN [Addresses] [d] ON [m_1].[Id] = [d].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2016

SELECT
	[tupledArg].[Id],
	[tupledArg].[Name]
FROM
	[Names] [tupledArg]
ORDER BY
	[tupledArg].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Addresses]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Names]


BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[tupledArg].[Id],
	[tupledArg].[Name]
FROM
	[Names] [tupledArg]
ORDER BY
	[tupledArg].[Id]


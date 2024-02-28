BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Test3799Item]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Test3799Item]', N'U') IS NULL)
	CREATE TABLE [Test3799Item]
	(
		[Id]       Int            NOT NULL,
		[ParentId] Int                NULL,
		[Name]     NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Test3799Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @ParentId Int -- Int32
SET     @ParentId = NULL
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'root'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @ParentId Int -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @ParentId Int -- Int32
SET     @ParentId = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 1.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @ParentId Int -- Int32
SET     @ParentId = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 1.2'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @ParentId Int -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 2'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @ParentId Int -- Int32
SET     @ParentId = 5
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 2.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @ParentId Int -- Int32
SET     @ParentId = 5
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 2.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[key_data_result].[Id],
	[key_data_result].[Id_1],
	[detail_1].[Name]
FROM
	(
		SELECT DISTINCT
			[detail].[Id],
			[item_1].[Id] as [Id_1]
		FROM
			[Test3799Item] [item_1]
				INNER JOIN [Test3799Item] [detail] ON [item_1].[Id] = [detail].[ParentId]
	) [key_data_result]
		INNER JOIN [Test3799Item] [detail_1] ON [key_data_result].[Id] = [detail_1].[ParentId]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[item_1].[Id],
	[detail].[Name],
	[detail].[Id]
FROM
	[Test3799Item] [item_1]
		INNER JOIN [Test3799Item] [detail] ON [item_1].[Id] = [detail].[ParentId]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[item_1].[Name],
	[item_1].[Id]
FROM
	[Test3799Item] [item_1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Test3799Item]


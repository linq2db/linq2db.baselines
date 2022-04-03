BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value_1 NVarChar(4000) -- String
SET     @Value_1 = N'Janet'

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value_1 NVarChar(4000) -- String
SET     @Value_1 = N'Doe'

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

UPDATE
	[t]
SET
	[t].[Value] = [r].[Value]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(3,N'Janet Updated'), (4,N'Doe Updated')
		) [r]([Id], [Value]) ON [t].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TableToInsert]


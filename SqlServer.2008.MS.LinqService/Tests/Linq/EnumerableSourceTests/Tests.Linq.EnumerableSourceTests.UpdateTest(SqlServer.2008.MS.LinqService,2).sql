BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Janet'

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Doe'

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

UPDATE
	[u]
SET
	[u].[Value] = [r].[Value]
FROM
	[TableToInsert] [u],
	(VALUES
		(3,N'Janet Updated'), (4,N'Doe Updated')
	) [r]([Id], [Value])
WHERE
	[u].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]


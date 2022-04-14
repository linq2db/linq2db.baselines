﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 4
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
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 5
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
-- SqlServer.2017.MS SqlServer.2017

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(4), (5)
		) [r]([Id]) ON [t].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TableToInsert]


﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005

UPDATE
	[u]
SET
	[u].[Value] = [r].[Value]
FROM
	[TableToInsert] [u],
	(
		SELECT 3 AS [Id], N'Janet Updated' AS [Value]
		UNION ALL
		SELECT 4, N'Doe Updated') [r]
WHERE
	[u].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]


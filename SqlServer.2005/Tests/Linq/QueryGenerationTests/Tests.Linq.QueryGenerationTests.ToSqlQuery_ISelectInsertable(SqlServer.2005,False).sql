BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableWithIdentitySrc]', N'U') IS NOT NULL)
	DROP TABLE [TableWithIdentitySrc]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableWithIdentitySrc]', N'U') IS NULL)
	CREATE TABLE [TableWithIdentitySrc]
	(
		[Id]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_TableWithIdentitySrc] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NOT NULL)
	DROP TABLE [TableWithIdentity]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NULL)
	CREATE TABLE [TableWithIdentity]
	(
		[Id]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentitySrc]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2005
DECLARE @addition Int -- Int32
SET     @addition = 123

INSERT INTO [TableWithIdentity]
(
	[Value]
)
SELECT
	[t1].[Value] + @addition
FROM
	[TableWithIdentitySrc] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NOT NULL)
	DROP TABLE [TableWithIdentity]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableWithIdentitySrc]', N'U') IS NOT NULL)
	DROP TABLE [TableWithIdentitySrc]


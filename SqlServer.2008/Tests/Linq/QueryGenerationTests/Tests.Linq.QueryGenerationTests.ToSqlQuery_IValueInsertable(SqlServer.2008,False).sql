BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NOT NULL)
	DROP TABLE [TableWithIdentity]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NULL)
	CREATE TABLE [TableWithIdentity]
	(
		[Id]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008
DECLARE @value Int -- Int32
SET     @value = 123

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@value
)

BeforeExecute
-- SqlServer.2008

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NOT NULL)
	DROP TABLE [TableWithIdentity]


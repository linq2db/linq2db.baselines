BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NOT NULL)
	DROP TABLE [TableWithIdentity]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NULL)
	CREATE TABLE [TableWithIdentity]
	(
		[Id]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @newValue Int -- Int32
SET     @newValue = 123

UPDATE
	[TableWithIdentity]
SET
	[Value] = @newValue

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NOT NULL)
	DROP TABLE [TableWithIdentity]


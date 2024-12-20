BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TableWithIdentity]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NULL)
	CREATE TABLE [TableWithIdentity]
	(
		[Id]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019

UPDATE
	[TableWithIdentity]
SET
	[Value] = 123

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TableWithIdentity]


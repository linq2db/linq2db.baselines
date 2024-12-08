BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NOT NULL)
	DROP TABLE [TableWithIdentity]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NULL)
	CREATE TABLE [TableWithIdentity]
	(
		[Id]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012
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
-- SqlServer.2012

UPDATE
	[TableWithIdentity]
SET
	[Value] = 123

BeforeExecute
-- SqlServer.2012

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NOT NULL)
	DROP TABLE [TableWithIdentity]


BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[ValuesTable]', N'U') IS NOT NULL)
	DROP TABLE [ValuesTable]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[ValuesTable]', N'U') IS NULL)
	CREATE TABLE [ValuesTable]
	(
		[Id]         BigInt NOT NULL,
		[SomeValue1] Int    NOT NULL,
		[SomeValue2] Int    NOT NULL,

		CONSTRAINT [PK_ValuesTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id BigInt -- Int64
SET     @Id = 1
DECLARE @SomeValue1 Int -- Int32
SET     @SomeValue1 = 2
DECLARE @SomeValue2 Int -- Int32
SET     @SomeValue2 = 2

INSERT INTO [ValuesTable]
(
	[Id],
	[SomeValue1],
	[SomeValue2]
)
VALUES
(
	@Id,
	@SomeValue1,
	@SomeValue2
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (2)
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[ValuesTable]', N'U') IS NOT NULL)
	DROP TABLE [ValuesTable]


BeforeExecute
-- SqlServer.2005

CREATE TABLE [ValuesTable]
(
	[Id]         BigInt NOT NULL,
	[SomeValue1] Int    NOT NULL,
	[SomeValue2] Int    NOT NULL,

	CONSTRAINT [PK_ValuesTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
DECLARE @SomeValue1 Int -- Int32
SET     @SomeValue1 = 8

UPDATE
	[t1]
SET
	[t1].[SomeValue1] = @SomeValue1,
	[t1].[SomeValue2] = 4
FROM
	[ValuesTable] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @param Int -- Int32
SET     @param = 8

UPDATE
	[t1]
SET
	[t1].[SomeValue2] = @param
FROM
	[ValuesTable] [t1]

BeforeExecute
-- SqlServer.2005

DROP TABLE [ValuesTable]


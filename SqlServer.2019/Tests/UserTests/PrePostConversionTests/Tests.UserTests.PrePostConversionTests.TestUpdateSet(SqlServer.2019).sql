-- SqlServer.2019
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

-- SqlServer.2019
DECLARE @SomeValue1 Int -- Int32
SET     @SomeValue1 = 8

UPDATE
	[ValuesTable]
SET
	[SomeValue1] = @SomeValue1,
	[SomeValue2] = 4

-- SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]

-- SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 8

UPDATE
	[ValuesTable]
SET
	[SomeValue2] = @param

-- SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]


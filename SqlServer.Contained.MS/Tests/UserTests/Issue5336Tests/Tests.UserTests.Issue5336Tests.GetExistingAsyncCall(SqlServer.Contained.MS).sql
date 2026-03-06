-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '7ae0635a-878f-41a8-915f-feaa3b1ce3c9'
DECLARE @Number Int -- Int32
SET     @Number = 5
DECLARE @Test NVarChar(4000) -- String
SET     @Test = N'aaa'

INSERT INTO [TestDtoWithPks]
(
	[Id],
	[Number],
	[Test]
)
VALUES
(
	@Id,
	@Number,
	@Test
)

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '7ae0635a-878f-41a8-915f-feaa3b1ce3c9'
DECLARE @Number Int -- Int32
SET     @Number = 5

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = @Id AND [t1].[Number] = @Number


-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'e2d51b6a-2816-4cf2-9176-5da0e7ecde66'
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

-- SqlServer.2016.MS SqlServer.2016
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'e2d51b6a-2816-4cf2-9176-5da0e7ecde66'
DECLARE @nr Int -- Int32
SET     @nr = 5

SELECT TOP (1)
	[x].[Id],
	[x].[Number],
	[x].[Test]
FROM
	[TestDtoWithPks] [x]
WHERE
	[x].[Id] = @id AND [x].[Number] = @nr


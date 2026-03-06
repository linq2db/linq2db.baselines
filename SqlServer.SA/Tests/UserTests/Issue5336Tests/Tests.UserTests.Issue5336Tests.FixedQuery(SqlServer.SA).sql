-- SqlServer.SA SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'b20e7c8a-d4dd-4452-a4bb-1cbb6942d3c7'
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

-- SqlServer.SA SqlServer.2019
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'b20e7c8a-d4dd-4452-a4bb-1cbb6942d3c7'
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


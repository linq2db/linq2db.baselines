-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '94f08651-fb3b-4fdd-8373-8f3cece0a502'
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

-- SqlServer.2014
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '94f08651-fb3b-4fdd-8373-8f3cece0a502'
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


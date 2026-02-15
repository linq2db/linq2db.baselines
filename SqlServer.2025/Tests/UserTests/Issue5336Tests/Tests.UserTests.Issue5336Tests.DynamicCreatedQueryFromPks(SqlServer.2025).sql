-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'e5a8dac4-26c5-4fe6-bb37-83aa5dcea14a'
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

-- SqlServer.2025

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'e5a8dac4-26c5-4fe6-bb37-83aa5dcea14a' AND
	[t1].[Number] = 5


-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '6a276d16-4d53-41e4-b683-5c479ed2bacd'
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
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '6a276d16-4d53-41e4-b683-5c479ed2bacd'
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


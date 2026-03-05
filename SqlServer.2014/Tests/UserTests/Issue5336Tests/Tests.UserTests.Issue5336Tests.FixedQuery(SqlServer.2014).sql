-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '1937ef44-1872-49ae-9f63-b1c111a48c97'
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
SET     @id = '1937ef44-1872-49ae-9f63-b1c111a48c97'
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


-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'e5227630-6ed2-4c38-bc93-ff0cfdc012ec'
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

-- SqlServer.2017
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'e5227630-6ed2-4c38-bc93-ff0cfdc012ec'
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


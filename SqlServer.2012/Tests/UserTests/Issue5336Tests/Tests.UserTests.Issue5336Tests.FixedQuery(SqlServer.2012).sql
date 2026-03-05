-- SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'c5cbc050-4055-4cb5-b1e5-004dfd2f9a14'
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

-- SqlServer.2012
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'c5cbc050-4055-4cb5-b1e5-004dfd2f9a14'
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


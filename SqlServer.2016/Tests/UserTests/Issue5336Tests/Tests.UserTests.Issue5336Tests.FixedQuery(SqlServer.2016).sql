-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '3cbd6af5-5967-4977-8c13-ea845c2fad9b'
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

-- SqlServer.2016
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '3cbd6af5-5967-4977-8c13-ea845c2fad9b'
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


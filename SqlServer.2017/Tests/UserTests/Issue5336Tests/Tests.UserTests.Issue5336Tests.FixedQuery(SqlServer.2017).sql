-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '62efcf89-5fa8-47e8-bef4-3de9f6b11b8a'
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
SET     @id = '62efcf89-5fa8-47e8-bef4-3de9f6b11b8a'
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


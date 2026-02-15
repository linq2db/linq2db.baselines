-- SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd8390a55-2ad1-4b8f-88cb-8fd08e5ec74b'
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
SET     @id = 'd8390a55-2ad1-4b8f-88cb-8fd08e5ec74b'
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


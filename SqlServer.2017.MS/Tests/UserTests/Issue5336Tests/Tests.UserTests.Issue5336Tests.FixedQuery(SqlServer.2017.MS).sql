-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '6949d765-7a47-4a68-a846-0f82c9daa293'
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

-- SqlServer.2017.MS SqlServer.2017
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '6949d765-7a47-4a68-a846-0f82c9daa293'
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


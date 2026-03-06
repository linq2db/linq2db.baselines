-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'f233d5f2-f1c2-41d5-b8c4-46dde7777612'
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

-- SqlServer.2008
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'f233d5f2-f1c2-41d5-b8c4-46dde7777612'
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


-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '9f7ed0a0-97b6-4da7-b8f8-e2e18ba157a9'
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
SET     @id = '9f7ed0a0-97b6-4da7-b8f8-e2e18ba157a9'
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


-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd97cec5f-5109-4a71-9d5f-db64f7bcbfbb'
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
SET     @id = 'd97cec5f-5109-4a71-9d5f-db64f7bcbfbb'
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


-- SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'c2c1e817-f76b-4300-b612-1ef3cb838255'
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
SET     @id = 'c2c1e817-f76b-4300-b612-1ef3cb838255'
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


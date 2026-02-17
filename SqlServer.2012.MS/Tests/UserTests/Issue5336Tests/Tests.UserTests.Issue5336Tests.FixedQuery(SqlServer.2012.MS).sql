-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '171e2125-76b3-47c3-96b6-6c39d29d1bde'
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

-- SqlServer.2012.MS SqlServer.2012
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '171e2125-76b3-47c3-96b6-6c39d29d1bde'
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


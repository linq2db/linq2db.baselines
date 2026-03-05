-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '7d3ed744-00ef-44d5-b679-3f0e518ddf1e'
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

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '7d3ed744-00ef-44d5-b679-3f0e518ddf1e' AND
	[t1].[Number] = 5


-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '0b169fd9-0457-4ded-a1a5-30eb8219ef04'
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

-- SqlServer.2025

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '0b169fd9-0457-4ded-a1a5-30eb8219ef04' AND
	[t1].[Number] = 5


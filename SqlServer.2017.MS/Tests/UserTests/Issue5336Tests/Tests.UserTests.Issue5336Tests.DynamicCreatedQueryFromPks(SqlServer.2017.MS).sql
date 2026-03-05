-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'fcfa52ff-d5e3-49e6-acea-e10f58b2bbea'
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

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'fcfa52ff-d5e3-49e6-acea-e10f58b2bbea' AND
	[t1].[Number] = 5


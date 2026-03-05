-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'aa75d751-663f-4720-94fc-58c67a4db69d'
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

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'aa75d751-663f-4720-94fc-58c67a4db69d' AND
	[t1].[Number] = 5


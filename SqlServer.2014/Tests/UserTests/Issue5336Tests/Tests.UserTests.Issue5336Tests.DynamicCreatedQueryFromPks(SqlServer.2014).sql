-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '50814d8b-013c-423b-892f-6a9a2587e594'
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

-- SqlServer.2014

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '50814d8b-013c-423b-892f-6a9a2587e594' AND
	[t1].[Number] = 5


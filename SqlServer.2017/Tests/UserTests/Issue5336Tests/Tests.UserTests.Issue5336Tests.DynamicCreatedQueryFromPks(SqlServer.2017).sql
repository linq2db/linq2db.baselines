-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'fa3d70ff-5bef-4434-a5ad-421bfe05056f'
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

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'fa3d70ff-5bef-4434-a5ad-421bfe05056f' AND
	[t1].[Number] = 5


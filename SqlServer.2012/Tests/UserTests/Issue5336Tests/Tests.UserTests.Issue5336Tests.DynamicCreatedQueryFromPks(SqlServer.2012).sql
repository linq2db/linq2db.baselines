-- SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '66cdeac1-4db1-45b6-881b-ad43bcacbd1e'
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

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '66cdeac1-4db1-45b6-881b-ad43bcacbd1e' AND
	[t1].[Number] = 5


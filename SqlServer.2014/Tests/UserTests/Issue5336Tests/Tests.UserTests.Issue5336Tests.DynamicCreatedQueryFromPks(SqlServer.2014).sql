-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'a8928e36-240d-4ec9-b6ca-25a0c6588c24'
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
	[t1].[Id] = 'a8928e36-240d-4ec9-b6ca-25a0c6588c24' AND
	[t1].[Number] = 5


-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '10d834cb-c46f-422f-8953-4af294bcb769'
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
	[t1].[Id] = '10d834cb-c46f-422f-8953-4af294bcb769' AND
	[t1].[Number] = 5


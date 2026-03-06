-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '24eb541a-d30a-4b49-8fab-24c888de10f1'
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

-- SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '24eb541a-d30a-4b49-8fab-24c888de10f1' AND
	[t1].[Number] = 5


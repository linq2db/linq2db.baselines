-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'efc91318-791c-4712-bca1-258ab33f4ef3'
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

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'efc91318-791c-4712-bca1-258ab33f4ef3' AND
	[t1].[Number] = 5


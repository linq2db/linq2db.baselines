-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '85a30226-a35b-48c9-8842-1291adf8da7c'
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

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '85a30226-a35b-48c9-8842-1291adf8da7c' AND
	[t1].[Number] = 5


-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '8d3e5bf0-c842-41ec-83f1-55eb6f77d5f9'
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
	[t1].[Id] = '8d3e5bf0-c842-41ec-83f1-55eb6f77d5f9' AND
	[t1].[Number] = 5


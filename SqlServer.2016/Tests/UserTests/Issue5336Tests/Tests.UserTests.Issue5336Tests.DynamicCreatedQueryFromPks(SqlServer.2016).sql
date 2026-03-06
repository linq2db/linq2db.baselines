-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '690447b8-c40e-40db-a866-e76088580c98'
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
	[t1].[Id] = '690447b8-c40e-40db-a866-e76088580c98' AND
	[t1].[Number] = 5


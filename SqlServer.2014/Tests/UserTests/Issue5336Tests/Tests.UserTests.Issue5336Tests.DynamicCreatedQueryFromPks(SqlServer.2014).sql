-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd67469fb-3d6c-4281-800d-6d2812796e10'
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
	[t1].[Id] = 'd67469fb-3d6c-4281-800d-6d2812796e10' AND
	[t1].[Number] = 5


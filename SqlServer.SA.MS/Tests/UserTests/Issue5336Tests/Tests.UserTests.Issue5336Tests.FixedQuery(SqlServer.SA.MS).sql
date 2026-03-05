-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '6358107d-531b-4a60-be3c-378860be876a'
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
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '6358107d-531b-4a60-be3c-378860be876a'
DECLARE @nr Int -- Int32
SET     @nr = 5

SELECT TOP (1)
	[x].[Id],
	[x].[Number],
	[x].[Test]
FROM
	[TestDtoWithPks] [x]
WHERE
	[x].[Id] = @id AND [x].[Number] = @nr


-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '3e132831-a6d9-4818-bb03-d893f64c4b1c'
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

-- SqlServer.2012.MS SqlServer.2012
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '3e132831-a6d9-4818-bb03-d893f64c4b1c'
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


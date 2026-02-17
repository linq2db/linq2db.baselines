-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'e7e87af3-025f-406c-b9d3-d5364a2839da'
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

-- SqlServer.2022
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'e7e87af3-025f-406c-b9d3-d5364a2839da'
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


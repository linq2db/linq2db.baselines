-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '2bcb6237-8337-452d-9eb1-f9f2d428f98b'
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
SET     @id = '2bcb6237-8337-452d-9eb1-f9f2d428f98b'
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


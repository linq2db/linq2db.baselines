-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '72e503a2-fcd8-46d2-993e-a039ab28bc36'
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

-- SqlServer.2025
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '72e503a2-fcd8-46d2-993e-a039ab28bc36'
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


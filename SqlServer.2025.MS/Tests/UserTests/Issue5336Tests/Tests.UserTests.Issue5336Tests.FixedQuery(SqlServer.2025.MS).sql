-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'b223b172-44b0-4d74-950a-b382d21bd01f'
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

-- SqlServer.2025.MS SqlServer.2025
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'b223b172-44b0-4d74-950a-b382d21bd01f'
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


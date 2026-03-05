-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '235cb410-fe04-45f0-bd85-da38f8dea530'
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

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '235cb410-fe04-45f0-bd85-da38f8dea530' AND
	[t1].[Number] = 5


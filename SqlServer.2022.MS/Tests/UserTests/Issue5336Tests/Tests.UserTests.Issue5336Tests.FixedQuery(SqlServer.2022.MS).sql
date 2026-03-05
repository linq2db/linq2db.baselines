-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'beec2b32-f357-4510-b433-27fbf188ff1b'
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

-- SqlServer.2022.MS SqlServer.2022
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'beec2b32-f357-4510-b433-27fbf188ff1b'
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


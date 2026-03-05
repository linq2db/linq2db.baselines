-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '0a93340b-a0f0-4141-b0fe-7a8f63b90f01'
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

-- SqlServer.2016.MS SqlServer.2016
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '0a93340b-a0f0-4141-b0fe-7a8f63b90f01'
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


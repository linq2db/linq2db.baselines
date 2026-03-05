-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'ad4afdb8-0095-41f6-bde1-ab0f1a889307'
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
SET     @id = 'ad4afdb8-0095-41f6-bde1-ab0f1a889307'
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


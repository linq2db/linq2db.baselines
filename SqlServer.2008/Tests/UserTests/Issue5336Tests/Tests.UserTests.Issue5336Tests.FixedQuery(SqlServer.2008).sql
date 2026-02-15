-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '7cc362da-3887-4a9c-a4a9-b093a81f70ff'
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

-- SqlServer.2008
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '7cc362da-3887-4a9c-a4a9-b093a81f70ff'
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


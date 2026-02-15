-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '44073930-1f42-4b8d-8920-e6bcfe3f7170'
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

-- SqlServer.2014
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '44073930-1f42-4b8d-8920-e6bcfe3f7170'
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


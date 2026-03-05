-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '0955a36e-c907-4e29-bad6-8de796a30a5b'
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
SET     @id = '0955a36e-c907-4e29-bad6-8de796a30a5b'
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


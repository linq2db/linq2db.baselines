-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '42473b21-b7c2-48da-b709-364896065204'
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

-- SqlServer.2016
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '42473b21-b7c2-48da-b709-364896065204'
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


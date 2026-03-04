-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '86b55dcd-8e29-4cbe-8c90-88a5ed9b74bd'
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

-- SqlServer.2022
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '86b55dcd-8e29-4cbe-8c90-88a5ed9b74bd'
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


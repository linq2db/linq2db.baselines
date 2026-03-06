-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '1fc9cf2e-6361-445c-a04c-94253c8de18c'
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

-- SqlServer.2019
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '1fc9cf2e-6361-445c-a04c-94253c8de18c'
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


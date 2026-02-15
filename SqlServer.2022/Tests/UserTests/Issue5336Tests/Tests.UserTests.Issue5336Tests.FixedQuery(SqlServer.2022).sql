-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '71e4fec5-4187-408d-bc1a-94966376e2b8'
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
SET     @id = '71e4fec5-4187-408d-bc1a-94966376e2b8'
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


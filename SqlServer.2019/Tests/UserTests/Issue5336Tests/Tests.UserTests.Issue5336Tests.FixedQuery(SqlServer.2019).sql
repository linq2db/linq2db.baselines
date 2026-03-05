-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '1d8b3397-1c7a-4422-9225-8f45660ec680'
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
SET     @id = '1d8b3397-1c7a-4422-9225-8f45660ec680'
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


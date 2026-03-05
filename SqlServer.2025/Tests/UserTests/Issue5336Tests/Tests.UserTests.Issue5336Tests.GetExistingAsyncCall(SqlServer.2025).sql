-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '32ec0c5b-f7c8-474b-9bfe-1212a30ca47e'
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

-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '32ec0c5b-f7c8-474b-9bfe-1212a30ca47e'
DECLARE @Number Int -- Int32
SET     @Number = 5

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = @Id AND [t1].[Number] = @Number


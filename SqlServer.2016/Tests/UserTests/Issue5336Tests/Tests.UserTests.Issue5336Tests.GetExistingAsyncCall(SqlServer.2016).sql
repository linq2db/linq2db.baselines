-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '6fb6da22-2f93-4555-979f-2b7a21ff91e2'
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
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '6fb6da22-2f93-4555-979f-2b7a21ff91e2'
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


-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '5a3f1c58-072b-40a3-a293-85b8f51c9a2e'
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

-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '5a3f1c58-072b-40a3-a293-85b8f51c9a2e'
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


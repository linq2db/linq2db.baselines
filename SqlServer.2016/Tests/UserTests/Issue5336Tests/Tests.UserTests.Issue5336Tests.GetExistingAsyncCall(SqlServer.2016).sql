-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'a0af72d0-875a-42a7-97fb-32f2c9e8d2e0'
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
SET     @Id = 'a0af72d0-875a-42a7-97fb-32f2c9e8d2e0'
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


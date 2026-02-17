-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd8504566-3fe5-4427-916b-bd9c8450ae2c'
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

-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd8504566-3fe5-4427-916b-bd9c8450ae2c'
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


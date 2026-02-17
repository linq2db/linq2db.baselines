-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '196f87c6-5053-43c6-9c6b-35ea8a1c9a9b'
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

-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '196f87c6-5053-43c6-9c6b-35ea8a1c9a9b'
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


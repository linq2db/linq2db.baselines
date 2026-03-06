-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '82b3c96e-75af-4138-96f4-0bffb7f1f30b'
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
SET     @Id = '82b3c96e-75af-4138-96f4-0bffb7f1f30b'
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


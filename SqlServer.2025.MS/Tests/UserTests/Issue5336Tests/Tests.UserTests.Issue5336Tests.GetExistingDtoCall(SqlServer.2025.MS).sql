-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '8fdb12da-f9e6-442a-aaf7-b1e3f596e12f'
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

-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '8fdb12da-f9e6-442a-aaf7-b1e3f596e12f'
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


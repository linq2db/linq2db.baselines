-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '6aa749d6-bb01-4b71-a171-a79d729eeb55'
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

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '6aa749d6-bb01-4b71-a171-a79d729eeb55' AND
	[t1].[Number] = 5


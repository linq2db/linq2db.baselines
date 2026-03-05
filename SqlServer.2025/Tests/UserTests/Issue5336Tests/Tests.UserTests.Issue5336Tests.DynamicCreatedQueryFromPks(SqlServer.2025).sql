-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '19319d8f-c71c-4a2f-bbe0-ea2e5b7cbfc4'
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
	[t1].[Id] = '19319d8f-c71c-4a2f-bbe0-ea2e5b7cbfc4' AND
	[t1].[Number] = 5


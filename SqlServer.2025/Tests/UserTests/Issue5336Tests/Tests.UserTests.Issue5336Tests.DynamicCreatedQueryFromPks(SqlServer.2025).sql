-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'f013a1fe-f1bd-4b1e-8338-7d77a9ed209d'
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
	[t1].[Id] = 'f013a1fe-f1bd-4b1e-8338-7d77a9ed209d' AND
	[t1].[Number] = 5


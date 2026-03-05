-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '33218a36-1966-486f-9963-d000fc6c3e62'
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

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '33218a36-1966-486f-9963-d000fc6c3e62' AND
	[t1].[Number] = 5


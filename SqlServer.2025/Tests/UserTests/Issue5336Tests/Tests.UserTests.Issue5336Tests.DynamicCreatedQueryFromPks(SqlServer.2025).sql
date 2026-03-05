-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'ecb27b0a-2212-46b4-9dac-e3c0ab3fc8cb'
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
	[t1].[Id] = 'ecb27b0a-2212-46b4-9dac-e3c0ab3fc8cb' AND
	[t1].[Number] = 5


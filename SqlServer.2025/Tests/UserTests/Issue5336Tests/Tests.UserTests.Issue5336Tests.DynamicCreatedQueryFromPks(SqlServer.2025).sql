-- SqlServer.2025
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd0848581-deee-485c-a767-e77c3c98f92a'
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
	[t1].[Id] = 'd0848581-deee-485c-a767-e77c3c98f92a' AND
	[t1].[Number] = 5


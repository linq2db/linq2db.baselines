-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '774935ba-1e88-4e43-b0f2-b6d6ef31acae'
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

-- SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '774935ba-1e88-4e43-b0f2-b6d6ef31acae' AND
	[t1].[Number] = 5


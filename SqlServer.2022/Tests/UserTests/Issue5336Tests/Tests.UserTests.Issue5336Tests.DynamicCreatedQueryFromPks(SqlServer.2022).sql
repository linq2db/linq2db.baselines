-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '1cbb6a2f-f993-4923-b2be-7d8d129e1ef9'
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

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '1cbb6a2f-f993-4923-b2be-7d8d129e1ef9' AND
	[t1].[Number] = 5


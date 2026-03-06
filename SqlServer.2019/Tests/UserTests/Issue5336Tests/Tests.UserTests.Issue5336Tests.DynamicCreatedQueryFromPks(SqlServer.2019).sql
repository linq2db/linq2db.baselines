-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '4f40d91b-38bc-4c77-aac6-8790dce9c5a4'
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
	[t1].[Id] = '4f40d91b-38bc-4c77-aac6-8790dce9c5a4' AND
	[t1].[Number] = 5


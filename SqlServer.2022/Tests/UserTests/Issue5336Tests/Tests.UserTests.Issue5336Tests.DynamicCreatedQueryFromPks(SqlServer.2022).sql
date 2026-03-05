-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '5374537f-7e05-45a7-9425-f7cca8437d80'
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
	[t1].[Id] = '5374537f-7e05-45a7-9425-f7cca8437d80' AND
	[t1].[Number] = 5


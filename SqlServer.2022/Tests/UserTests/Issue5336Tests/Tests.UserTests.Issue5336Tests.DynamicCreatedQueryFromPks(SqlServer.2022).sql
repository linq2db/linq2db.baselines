-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'a172991b-d1b8-469c-ab6f-b35391d5fb50'
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
	[t1].[Id] = 'a172991b-d1b8-469c-ab6f-b35391d5fb50' AND
	[t1].[Number] = 5


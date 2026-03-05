-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '6a275291-6802-42fe-bdde-349e4409ba0f'
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

-- SqlServer.2017

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '6a275291-6802-42fe-bdde-349e4409ba0f' AND
	[t1].[Number] = 5


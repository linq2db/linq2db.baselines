-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '26190d92-935d-4fcf-8eae-60cd5d2375a5'
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
	[t1].[Id] = '26190d92-935d-4fcf-8eae-60cd5d2375a5' AND
	[t1].[Number] = 5


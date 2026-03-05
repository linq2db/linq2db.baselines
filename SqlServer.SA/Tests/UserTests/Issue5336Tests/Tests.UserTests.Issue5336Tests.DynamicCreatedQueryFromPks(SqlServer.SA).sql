-- SqlServer.SA SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '5b2d2ad4-67c1-4544-a7f6-aad80cae696f'
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

-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '5b2d2ad4-67c1-4544-a7f6-aad80cae696f' AND
	[t1].[Number] = 5


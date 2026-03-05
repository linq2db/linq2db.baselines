-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'ba0cd019-2d79-465e-ad5e-2f2e7689d46f'
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
	[t1].[Id] = 'ba0cd019-2d79-465e-ad5e-2f2e7689d46f' AND
	[t1].[Number] = 5


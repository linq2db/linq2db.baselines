-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '934ff3ad-552c-4e1e-9e75-5c7b29ad445b'
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
	[t1].[Id] = '934ff3ad-552c-4e1e-9e75-5c7b29ad445b' AND
	[t1].[Number] = 5


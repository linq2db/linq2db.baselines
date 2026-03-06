-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '61db83c8-7475-44bd-91a5-81b70d5e0fce'
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
	[t1].[Id] = '61db83c8-7475-44bd-91a5-81b70d5e0fce' AND
	[t1].[Number] = 5


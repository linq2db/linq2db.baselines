-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'dd4258e3-82d1-4c30-92ec-ff17f021d74e'
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

-- SqlServer.2016

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'dd4258e3-82d1-4c30-92ec-ff17f021d74e' AND
	[t1].[Number] = 5


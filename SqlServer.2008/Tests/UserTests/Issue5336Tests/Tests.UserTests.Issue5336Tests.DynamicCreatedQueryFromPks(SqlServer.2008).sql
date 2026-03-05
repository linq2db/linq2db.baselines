-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '831bcd1c-f56e-40e3-9b9c-7073cbceac68'
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

-- SqlServer.2008

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '831bcd1c-f56e-40e3-9b9c-7073cbceac68' AND
	[t1].[Number] = 5


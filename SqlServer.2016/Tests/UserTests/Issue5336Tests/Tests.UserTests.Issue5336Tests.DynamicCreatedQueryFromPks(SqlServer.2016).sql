-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '11f2d0c4-efdb-41d3-997e-7288d0bbf39a'
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
	[t1].[Id] = '11f2d0c4-efdb-41d3-997e-7288d0bbf39a' AND
	[t1].[Number] = 5


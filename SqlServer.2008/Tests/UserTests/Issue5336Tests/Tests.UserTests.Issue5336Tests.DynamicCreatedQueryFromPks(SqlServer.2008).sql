-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '27403a1b-b7ef-457e-b821-48dc40e4f504'
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
	[t1].[Id] = '27403a1b-b7ef-457e-b821-48dc40e4f504' AND
	[t1].[Number] = 5


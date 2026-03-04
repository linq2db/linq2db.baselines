-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '0583965c-2a68-4544-8b4e-cace9cec99a6'
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
	[t1].[Id] = '0583965c-2a68-4544-8b4e-cace9cec99a6' AND
	[t1].[Number] = 5


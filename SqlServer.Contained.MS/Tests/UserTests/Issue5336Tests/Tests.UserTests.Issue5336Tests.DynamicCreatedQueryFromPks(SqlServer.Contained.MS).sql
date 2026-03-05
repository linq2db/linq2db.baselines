-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '975b4260-cc75-4030-9861-d8f08100e2b5'
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

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '975b4260-cc75-4030-9861-d8f08100e2b5' AND
	[t1].[Number] = 5


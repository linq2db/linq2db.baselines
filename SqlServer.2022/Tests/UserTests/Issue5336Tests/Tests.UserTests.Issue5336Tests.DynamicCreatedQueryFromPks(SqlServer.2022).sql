-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '654f3d08-552b-4d94-853b-146d42fec040'
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
	[t1].[Id] = '654f3d08-552b-4d94-853b-146d42fec040' AND
	[t1].[Number] = 5


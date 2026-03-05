-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '1b2e7f0e-713c-4c4e-8838-09facae11842'
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
	[t1].[Id] = '1b2e7f0e-713c-4c4e-8838-09facae11842' AND
	[t1].[Number] = 5


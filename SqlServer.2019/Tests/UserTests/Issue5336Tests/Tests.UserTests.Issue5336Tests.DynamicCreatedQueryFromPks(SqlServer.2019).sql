-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'ee0c9b1b-9658-461a-bdc1-3b0e2f89d389'
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
	[t1].[Id] = 'ee0c9b1b-9658-461a-bdc1-3b0e2f89d389' AND
	[t1].[Number] = 5


-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Test Int -- Int32
SET     @Test = 2

UPDATE
	[testparams]
SET
	[TestИмя] = @Test
WHERE
	[testparams].[TestИмя] = 1


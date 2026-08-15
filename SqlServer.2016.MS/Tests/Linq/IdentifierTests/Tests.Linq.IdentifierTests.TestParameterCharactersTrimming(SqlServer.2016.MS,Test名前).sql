-- SqlServer.2016.MS SqlServer.2016
DECLARE @Test Int -- Int32
SET     @Test = 2

UPDATE
	[testparams]
SET
	[Test名前] = @Test
WHERE
	[testparams].[Test名前] = 1


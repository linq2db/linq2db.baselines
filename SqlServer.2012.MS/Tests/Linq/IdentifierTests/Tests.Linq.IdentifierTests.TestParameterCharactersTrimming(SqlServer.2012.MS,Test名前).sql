-- SqlServer.2012.MS SqlServer.2012
DECLARE @Test Int -- Int32
SET     @Test = 2

UPDATE
	[testparams]
SET
	[Test名前] = @Test
WHERE
	[testparams].[Test名前] = 1


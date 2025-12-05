-- SqlServer.2017.MS SqlServer.2017
DECLARE @TestName Int -- Int32
SET     @TestName = 2

UPDATE
	[testparams]
SET
	[Test-Name] = @TestName
WHERE
	[testparams].[Test-Name] = 1


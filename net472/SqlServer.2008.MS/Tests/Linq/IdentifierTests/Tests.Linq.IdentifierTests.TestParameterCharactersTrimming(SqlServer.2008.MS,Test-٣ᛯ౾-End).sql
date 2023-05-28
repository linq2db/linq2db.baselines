BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[Test-٣ᛯ౾-End] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Test٣End Int -- Int32
SET     @Test٣End = 2

UPDATE
	[t]
SET
	[t].[Test-٣ᛯ౾-End] = @Test٣End
FROM
	[testparams] [t]
WHERE
	[t].[Test-٣ᛯ౾-End] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]


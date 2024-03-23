BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[1p] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 2

UPDATE
	[testparams]
SET
	[1p] = @p
WHERE
	[testparams].[1p] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]


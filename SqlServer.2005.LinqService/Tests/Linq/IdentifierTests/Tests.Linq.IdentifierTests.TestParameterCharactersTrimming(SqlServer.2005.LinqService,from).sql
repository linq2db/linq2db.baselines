BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[from] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @from Int -- Int32
SET     @from = 2

UPDATE
	[testparams]
SET
	[from] = @from
WHERE
	[testparams].[from] = 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]


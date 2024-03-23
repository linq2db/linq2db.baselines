BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[from] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @from Int -- Int32
SET     @from = 2

UPDATE
	[testparams]
SET
	[from] = @from
WHERE
	[testparams].[from] = 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [testparams]


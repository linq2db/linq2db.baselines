BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[p_p] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @p_p Int -- Int32
SET     @p_p = 2

UPDATE
	[testparams]
SET
	[p_p] = @p_p
WHERE
	[testparams].[p_p] = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [testparams]


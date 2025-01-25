BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue3472TableDC]', N'U') IS NOT NULL)
	DROP TABLE [Issue3472TableDC]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue3472TableDC]', N'U') IS NULL)
	CREATE TABLE [Issue3472TableDC]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Issue3472TableDC]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[Id],
	(
		SELECT
			COUNT(*)
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = [t1].[Id]
	)
FROM
	[Issue3472TableDC] [t1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue3472TableDC]', N'U') IS NOT NULL)
	DROP TABLE [Issue3472TableDC]


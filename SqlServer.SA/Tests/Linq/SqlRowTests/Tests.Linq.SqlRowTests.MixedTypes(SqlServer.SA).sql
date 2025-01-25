BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Mixed]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Mixed]', N'U') IS NULL)
	CREATE TABLE [Mixed]
	(
		[Int]    Int            NOT NULL,
		[Str]    NVarChar(4000)     NULL,
		[Date]   DateTime2      NOT NULL,
		[Double] Float          NOT NULL,
		[Bool]   Bit            NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [Mixed]
(
	[Int],
	[Str],
	[Date],
	[Double],
	[Bool]
)
VALUES
(1,N'One',DATETIME2FROMPARTS(2001, 1, 1, 0, 0, 0, 0, 7),1,1),
(2,N'Two',DATETIME2FROMPARTS(2002, 2, 2, 0, 0, 0, 0, 7),2,0)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Mixed] [t]
WHERE
	[t].[Int] > 0 AND
	[t].[Str] = N'One' AND
	[t].[Double] = 1 AND
	[t].[Bool] = 1 AND
	EXISTS(
		SELECT
			*
		FROM
			[Mixed] [u]
		WHERE
			(2 > [u].[Int] OR 2 = [u].[Int] AND [u].[Date] > [t].[Date])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Mixed]


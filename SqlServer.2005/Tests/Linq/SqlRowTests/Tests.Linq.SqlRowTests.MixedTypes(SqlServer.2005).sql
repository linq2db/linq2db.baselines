BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Mixed]', N'U') IS NOT NULL)
	DROP TABLE [Mixed]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Mixed]', N'U') IS NULL)
	CREATE TABLE [Mixed]
	(
		[Int]    Int            NOT NULL,
		[Str]    NVarChar(4000)     NULL,
		[Date]   DateTime       NOT NULL,
		[Double] Float          NOT NULL,
		[Bool]   Bit            NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Mixed]
(
	[Int],
	[Str],
	[Date],
	[Double],
	[Bool]
)
SELECT 1,N'One',CAST('2001-01-01T00:00:00.000' AS DATETIME),1,1 UNION ALL
SELECT 2,N'Two',CAST('2002-02-02T00:00:00.000' AS DATETIME),2,0

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Mixed] [t]
WHERE
	[t].[Int] > 0 AND
	[t].[Str] = N'One' AND
	[t].[Double] = 1 AND
	[t].[Bool] = 1 AND
	 EXISTS (
		SELECT
			*
		FROM
			[Mixed] [u]
		WHERE
			2 > [u].[Int] OR 2 = [u].[Int] AND [u].[Date] > [t].[Date]
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Mixed]', N'U') IS NOT NULL)
	DROP TABLE [Mixed]


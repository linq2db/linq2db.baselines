BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Mixed]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [Mixed]
(
	[Int],
	[Str],
	[Date],
	[Double],
	[Bool]
)
VALUES
(1,N'One','2001-01-01T00:00:00',1,1),
(2,N'Two','2002-02-02T00:00:00',2,0)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Count(*)
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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Mixed]


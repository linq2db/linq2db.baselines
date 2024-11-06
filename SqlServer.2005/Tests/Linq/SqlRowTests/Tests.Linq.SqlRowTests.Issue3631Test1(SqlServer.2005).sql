BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue3631Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3631Table]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue3631Table]', N'U') IS NULL)
	CREATE TABLE [Issue3631Table]
	(
		[Country] NVarChar(2) NOT NULL,
		[State]   NVarChar(2) NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
SELECT N'US',N'AL' UNION ALL
SELECT N'US',N'AZ' UNION ALL
SELECT N'US',N'CA' UNION ALL
SELECT N'US',N'FL' UNION ALL
SELECT N'US',N'IN' UNION ALL
SELECT N'US',N'OH' UNION ALL
SELECT N'US',N'NY' UNION ALL
SELECT N'CA',N'AB' UNION ALL
SELECT N'CA',N'ON'

BeforeExecute
-- SqlServer.2005

SELECT
	[x].[Country],
	[x].[State]
FROM
	[Issue3631Table] [x]
WHERE
	[x].[Country] = N'US' AND [x].[State] = N'CA' OR [x].[Country] = N'US' AND [x].[State] = N'NY'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue3631Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3631Table]


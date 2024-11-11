BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3631Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3631Table]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3631Table]', N'U') IS NULL)
	CREATE TABLE [Issue3631Table]
	(
		[Country] NVarChar(2) NOT NULL,
		[State]   NVarChar(2) NOT NULL
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(N'US',N'AL'),
(N'US',N'AZ'),
(N'US',N'CA'),
(N'US',N'FL'),
(N'US',N'IN'),
(N'US',N'OH'),
(N'US',N'NY'),
(N'CA',N'AB'),
(N'CA',N'ON')

BeforeExecute
-- SqlServer.2008

SELECT
	[x].[Country],
	[x].[State]
FROM
	[Issue3631Table] [x]
WHERE
	([x].[Country], [x].[State]) IN (
		SELECT
			[t1].[Item1],
			[t1].[Item2]
		FROM
			(VALUES
				(N'US',N'CA'), (N'US',N'NY')
			) [t1]([Item1], [Item2])
	)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3631Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3631Table]


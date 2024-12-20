BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue3631Table]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue3631Table]', N'U') IS NULL)
	CREATE TABLE [Issue3631Table]
	(
		[Country] NVarChar(2) NOT NULL,
		[State]   NVarChar(2) NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[x].[Country],
	[x].[State]
FROM
	[Issue3631Table] [x]
WHERE
	[x].[Country] = N'US' AND [x].[State] = N'CA' OR [x].[Country] = N'US' AND [x].[State] = N'NY'

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue3631Table]


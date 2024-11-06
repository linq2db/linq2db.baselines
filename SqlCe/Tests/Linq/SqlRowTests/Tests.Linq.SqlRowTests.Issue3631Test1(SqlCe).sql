BeforeExecute
-- SqlCe

DROP TABLE [Issue3631Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3631Table]
(
	[Country] NVarChar(2) NOT NULL,
	[State]   NVarChar(2) NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
SELECT 'US','AL' UNION ALL
SELECT 'US','AZ' UNION ALL
SELECT 'US','CA' UNION ALL
SELECT 'US','FL' UNION ALL
SELECT 'US','IN' UNION ALL
SELECT 'US','OH' UNION ALL
SELECT 'US','NY' UNION ALL
SELECT 'CA','AB' UNION ALL
SELECT 'CA','ON'

BeforeExecute
-- SqlCe

SELECT
	[x].[Country],
	[x].[State] as [State_1]
FROM
	[Issue3631Table] [x]
WHERE
	[x].[Country] = 'US' AND [x].[State] = 'CA' OR [x].[Country] = 'US' AND [x].[State] = 'NY'

BeforeExecute
-- SqlCe

DROP TABLE [Issue3631Table]


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
	([x].[Country], [x].[State]) IN (
		SELECT
			[t1].[Item1],
			[t1].[Item2]
		FROM
			(
				SELECT 'US' AS [Item1], 'CA' AS [Item2]
				UNION ALL
				SELECT 'US' AS [Item1], 'NY' AS [Item2]) [t1]
	)

BeforeExecute
-- SqlCe

DROP TABLE [Issue3631Table]


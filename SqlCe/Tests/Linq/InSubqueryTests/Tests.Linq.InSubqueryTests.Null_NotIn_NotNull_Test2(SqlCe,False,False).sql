BeforeExecute
-- SqlCe

DROP TABLE [test_in_1]

BeforeExecute
-- SqlCe

CREATE TABLE [test_in_1]
(
	[ID] Int     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [test_in_1]
(
	[ID]
)
SELECT 1 UNION ALL
SELECT 3

BeforeExecute
-- SqlCe

DROP TABLE [test_in_2]

BeforeExecute
-- SqlCe

CREATE TABLE [test_in_2]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [test_in_2]
(
	[ID]
)
SELECT 1 UNION ALL
SELECT 2

BeforeExecute
-- SqlCe

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NOT NULL AND ([t].[ID] IS NULL OR [t].[ID] NOT IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
		WHERE
			[p].[ID] IS NOT NULL
	))

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [test_in_2]

BeforeExecute
-- SqlCe

DROP TABLE [test_in_1]


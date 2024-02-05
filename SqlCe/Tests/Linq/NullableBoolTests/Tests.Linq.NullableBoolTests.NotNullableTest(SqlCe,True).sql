BeforeExecute
-- SqlCe

DROP TABLE [NotNullableBoolClass]

BeforeExecute
-- SqlCe

CREATE TABLE [NotNullableBoolClass]
(
	[Value] Bit NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [NotNullableBoolClass]
(
	[Value]
)
SELECT 1 UNION ALL
SELECT 0

BeforeExecute
-- SqlCe

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlCe

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlCe

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlCe

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlCe

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlCe

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlCe

DROP TABLE [NotNullableBoolClass]


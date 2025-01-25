BeforeExecute
-- SqlCe

DROP TABLE [NullableBoolClass]

BeforeExecute
-- SqlCe

CREATE TABLE [NullableBoolClass]
(
	[Value] Bit     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [NullableBoolClass]
(
	[Value]
)
SELECT NULL UNION ALL
SELECT 1 UNION ALL
SELECT 0

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	([t].[Value] = 1 OR [t].[Value] IS NULL)

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlCe

DROP TABLE [NullableBoolClass]


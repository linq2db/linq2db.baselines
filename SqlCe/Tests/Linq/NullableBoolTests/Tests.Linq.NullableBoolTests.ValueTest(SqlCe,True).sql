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
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

BeforeExecute
-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

BeforeExecute
-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value OR [t].[Value] IS NULL

BeforeExecute
-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 1

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value

BeforeExecute
-- SqlCe

DROP TABLE [NullableBoolClass]


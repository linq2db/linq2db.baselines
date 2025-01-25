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
DECLARE @Value Bit -- Boolean
SET     @Value = NULL

INSERT INTO [NullableBoolClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Value Bit -- Boolean
SET     @Value = 1

INSERT INTO [NullableBoolClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Value Bit -- Boolean
SET     @Value = 0

INSERT INTO [NullableBoolClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	1 = 0

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]

BeforeExecute
-- SqlCe

DROP TABLE [NullableBoolClass]


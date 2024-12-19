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
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

BeforeExecute
-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

BeforeExecute
-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value OR [t].[Value] IS NULL

BeforeExecute
-- SqlCe
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value] as [Value_1]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value

BeforeExecute
-- SqlCe

DROP TABLE [NullableBoolClass]


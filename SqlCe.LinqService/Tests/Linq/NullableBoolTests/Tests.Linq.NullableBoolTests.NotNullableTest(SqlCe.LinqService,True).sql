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
DECLARE @Value Bit -- Boolean
SET     @Value = 1

INSERT INTO [NotNullableBoolClass]
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

INSERT INTO [NotNullableBoolClass]
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
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlCe

SELECT
	[t].[Value] as [Value_1]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlCe

DROP TABLE [NotNullableBoolClass]


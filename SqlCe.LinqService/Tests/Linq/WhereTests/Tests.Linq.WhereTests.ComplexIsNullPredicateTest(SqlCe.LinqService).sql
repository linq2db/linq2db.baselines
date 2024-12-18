BeforeExecute
-- SqlCe

DROP TABLE [ComplexPredicate]

BeforeExecute
-- SqlCe

CREATE TABLE [ComplexPredicate]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar -- String
SET     @Value = NULL

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(5) -- String
SET     @Value = 'other'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value NVarChar(3) -- String
SET     @Value = '123'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value NVarChar(4) -- String
SET     @Value = 'test'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value NVarChar(1) -- String
SET     @Value = '1'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Value] as [Value_1]
FROM
	[ComplexPredicate] [r]
WHERE
	CASE
		WHEN [r].[Value] = '123' AND [r].[Value] IS NOT NULL THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value] = '1' AND [r].[Value] IS NOT NULL OR [r].[Value] = 'test' AND [r].[Value] IS NOT NULL AND ([r].[Value] <> '1' OR [r].[Value] IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	[r].[Id]

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[ComplexPredicate] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [ComplexPredicate]


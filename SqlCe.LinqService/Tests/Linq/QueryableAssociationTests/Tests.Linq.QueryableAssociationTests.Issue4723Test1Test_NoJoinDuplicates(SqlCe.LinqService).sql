BeforeExecute
-- SqlCe

DROP TABLE [Issue4723Table1]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4723Table1]
(
	[Id]               Int           NOT NULL,
	[ExpressionMethod] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @ExpressionMethod NVarChar -- String
SET     @ExpressionMethod = NULL

INSERT INTO [Issue4723Table1]
(
	[Id],
	[ExpressionMethod]
)
VALUES
(
	@Id,
	@ExpressionMethod
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue4723Table2]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4723Table2]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO [Issue4723Table2]
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
SET     @Id = 1
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO [Issue4723Table2]
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
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'Value 2'

INSERT INTO [Issue4723Table2]
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
	[x].[Id],
	[t1].[Association]
FROM
	[Issue4723Table1] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Association].[Value] as [Association]
			FROM
				[Issue4723Table2] [a_Association]
			WHERE
				[a_Association].[Id] = [x].[Id]
		) [t1]
WHERE
	[t1].[Association] IS NOT NULL AND ([t1].[Association] <> 'unknown' OR [t1].[Association] IS NULL)

BeforeExecute
-- SqlCe

DROP TABLE [Issue4723Table2]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4723Table1]


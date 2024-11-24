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

INSERT INTO [Issue4723Table1]
(
	[Id],
	[ExpressionMethod]
)
SELECT 1,NULL

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

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
SELECT 1,'Value 1' UNION ALL
SELECT 1,'Value 1' UNION ALL
SELECT 2,'Value 2'

BeforeExecute
-- SqlCe

SELECT
	[t2].[Id],
	[t1].[ExpressionMethod]
FROM
	[Issue4723Table1] [t2]
		OUTER APPLY (
			SELECT TOP (1)
				[se].[Value] as [ExpressionMethod]
			FROM
				[Issue4723Table2] [se]
			WHERE
				[se].[Id] = [t2].[Id]
		) [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4723Table2]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4723Table1]


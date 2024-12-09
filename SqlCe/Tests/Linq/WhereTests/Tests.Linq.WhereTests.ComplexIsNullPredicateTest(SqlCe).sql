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

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
SELECT 1,NULL UNION ALL
SELECT 2,'other' UNION ALL
SELECT 3,'123' UNION ALL
SELECT 4,'test' UNION ALL
SELECT 5,'1'

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Value] as [Value_1]
FROM
	[ComplexPredicate] [r]
WHERE
	CASE
		WHEN [r].[Value] = '123' THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value] = '1' OR [r].[Value] = 'test' AND ([r].[Value] <> '1' OR [r].[Value] IS NULL)
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


BeforeExecute
-- SqlCe

CREATE TABLE [Issue464]
(
	[Id]    Int NOT NULL,
	[Value] Int     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue464]
(
	[Id],
	[Value]
)
SELECT 1,1 UNION ALL
SELECT 2,2 UNION ALL
SELECT 3,3

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[Issue464] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue464]


-- SqlCe

INSERT INTO [IssueAliasBugT1]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	10
)

-- SqlCe

INSERT INTO [IssueAliasBugT1]
(
	[Id],
	[Value]
)
VALUES
(
	2,
	20
)

-- SqlCe

INSERT INTO [IssueAliasBugT2]
(
	[Id],
	[OutId],
	[Cnt]
)
VALUES
(
	1,
	1,
	3
)

-- SqlCe

INSERT INTO [IssueAliasBugT2]
(
	[Id],
	[OutId],
	[Cnt]
)
VALUES
(
	2,
	1,
	5
)

-- SqlCe

INSERT INTO [IssueAliasBugT2]
(
	[Id],
	[OutId],
	[Cnt]
)
VALUES
(
	3,
	2,
	7
)

-- SqlCe
DECLARE @minValue Int -- Int32
SET     @minValue = 15

SELECT
	[o].[Id],
	[o].[Value] as [Value_1],
	[t1].[SumCnt]
FROM
	[IssueAliasBugT1] [o]
		OUTER APPLY (
			SELECT TOP (1)
				SUM([i].[Cnt]) as [SumCnt]
			FROM
				[IssueAliasBugT2] [i]
			WHERE
				[i].[OutId] = [o].[Id]
			GROUP BY
				[i].[OutId]
		) [t1]
WHERE
	[o].[Value] >= @minValue


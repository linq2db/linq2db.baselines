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
	[o].[Value],
	[t1].[InnerCount]
FROM
	[IssueAliasBugT1] [o]
		OUTER APPLY (
			SELECT
				COUNT(*) as [InnerCount]
			FROM
				[IssueAliasBugT2] [i]
			WHERE
				[i].[OutId] = [o].[Id]
		) [t1]
WHERE
	[o].[Value] >= @minValue


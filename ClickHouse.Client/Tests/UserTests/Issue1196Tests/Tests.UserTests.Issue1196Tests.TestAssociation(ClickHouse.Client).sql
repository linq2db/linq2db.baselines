BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Requests
(
	Id,
	FirmId
)
VALUES
(
	1002,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO FirmInfo
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Assignments
(
	DirectionId,
	TargetId,
	DateRevoke
)
VALUES
(
	toUUID('c5c0a778-694e-49d1-b1a0-f8ef5569c673'),
	1,
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	a_Requests.Id,
	a_Requests.FirmId,
	a_DocPrepareAssignment.Id,
	a_DocPrepareAssignment.DirectionId,
	a_DocPrepareAssignment.TargetId,
	a_DocPrepareAssignment.DateRevoke
FROM
	Requests r
		LEFT JOIN FirmInfo a_FirmInfo ON r.FirmId = a_FirmInfo.Id
		INNER JOIN Requests a_Requests ON a_FirmInfo.Id IS NOT NULL AND a_FirmInfo.Id = a_Requests.FirmId
		LEFT JOIN Assignments a_DocPrepareAssignment ON a_DocPrepareAssignment.TargetId = a_Requests.Id
WHERE
	r.Id = 1002

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	a_Requests.Id,
	a_Requests.FirmId,
	a_DocPrepareAssignment.Id,
	a_DocPrepareAssignment.DirectionId,
	a_DocPrepareAssignment.TargetId,
	a_DocPrepareAssignment.DateRevoke
FROM
	Requests r
		LEFT JOIN FirmInfo a_FirmInfo ON r.FirmId = a_FirmInfo.Id
		INNER JOIN Requests a_Requests ON a_FirmInfo.Id IS NOT NULL AND a_FirmInfo.Id = a_Requests.FirmId
		LEFT JOIN Assignments a_DocPrepareAssignment ON a_DocPrepareAssignment.TargetId = a_Requests.Id
WHERE
	r.Id = 1002


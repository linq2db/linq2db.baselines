﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Requests

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Requests
(
	Id     Int32,
	FirmId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FirmInfo

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS FirmInfo
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Assignments

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Assignments
(
	Id          Int32,
	DirectionId UUID,
	TargetId    Nullable(Int32),
	DateRevoke  Nullable(DateTime64(7)),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO FirmInfo
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
		INNER JOIN Requests a_Requests ON a_FirmInfo.Id = a_Requests.FirmId
		LEFT JOIN Assignments a_DocPrepareAssignment ON a_DocPrepareAssignment.TargetId = a_Requests.Id
WHERE
	r.Id = 1002

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
		INNER JOIN Requests a_Requests ON a_FirmInfo.Id = a_Requests.FirmId
		LEFT JOIN Assignments a_DocPrepareAssignment ON a_DocPrepareAssignment.TargetId = a_Requests.Id
WHERE
	r.Id = 1002

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Assignments

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FirmInfo

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Requests


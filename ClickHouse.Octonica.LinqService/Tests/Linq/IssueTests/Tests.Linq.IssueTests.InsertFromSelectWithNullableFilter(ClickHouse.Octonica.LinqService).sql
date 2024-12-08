BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InsertIssueTest

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS InsertIssueTest
(
	ID          Int16,
	intDataType Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InsertIssueTest
(
	ID,
	intDataType
)
VALUES
(
	toInt16(0),
	0
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InsertIssueTest
(
	ID,
	intDataType
)
VALUES
(
	toInt16(0),
	0
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InsertIssueTest
(
	ID,
	intDataType
)
VALUES
(
	toInt16(1234),
	1234
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InsertIssueTest
(
	ID,
	intDataType
)
VALUES
(
	toInt16(1234),
	1234
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InsertIssueTest
(
	ID,
	intDataType
)
SELECT
	toInt16(123),
	t2.ID
FROM
	(
		SELECT DISTINCT
			a_Association.ID as ID
		FROM
			InsertIssueTest t1
				INNER JOIN InsertIssueTest a_Association ON t1.ID = a_Association.intDataType
		WHERE
			1 = 0
	) t2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InsertIssueTest
(
	ID,
	intDataType
)
SELECT
	toInt16(123),
	t2.ID
FROM
	(
		SELECT DISTINCT
			a_Association.ID as ID
		FROM
			InsertIssueTest t1
				INNER JOIN InsertIssueTest a_Association ON t1.ID = a_Association.intDataType
		WHERE
			t1.ID = toInt16(1234)
	) t2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.intDataType
FROM
	InsertIssueTest t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InsertIssueTest


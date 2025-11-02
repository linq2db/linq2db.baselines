-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.intDataType
FROM
	InsertIssueTest t1


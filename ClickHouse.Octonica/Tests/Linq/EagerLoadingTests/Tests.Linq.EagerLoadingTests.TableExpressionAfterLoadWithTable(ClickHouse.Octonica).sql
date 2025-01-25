BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS UserIssue3128

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS UserIssue3128
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS UserDetailsIssue3128

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS UserDetailsIssue3128
(
	UserId Int32,
	Age    Int32,

	PRIMARY KEY (UserId)
)
ENGINE = MergeTree()
ORDER BY UserId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO UserIssue3128
(
	Id
)
VALUES
(
	10
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO UserDetailsIssue3128
(
	UserId,
	Age
)
VALUES
(
	10,
	18
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	a_Details.UserId,
	a_Details.Age
FROM
	UserIssue3128 t1
		LEFT JOIN UserDetailsIssue3128 a_Details ON t1.Id = a_Details.UserId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS UserDetailsIssue3128

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS UserIssue3128


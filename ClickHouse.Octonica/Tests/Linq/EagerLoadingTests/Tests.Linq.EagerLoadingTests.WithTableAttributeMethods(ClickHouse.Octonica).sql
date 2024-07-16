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
	t2.FirstName,
	t2.PersonID,
	t2.LastName,
	t2.MiddleName,
	t2.Gender
FROM
	(
		SELECT
			p.FirstName as FirstName,
			p.PersonID as PersonID,
			p.LastName as LastName,
			p.MiddleName as MiddleName,
			p.Gender as Gender,
			(
				SELECT
					COUNT(*)
				FROM
					UserIssue3128 t1
			) as COUNT_1
		FROM
			Person p
	) t2
WHERE
	t2.COUNT_1 > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS UserDetailsIssue3128

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS UserIssue3128


BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UserIssue3128

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS UserIssue3128
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UserDetailsIssue3128

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS UserDetailsIssue3128
(
	UserId Int32,
	Age    Int32,

	PRIMARY KEY (UserId)
)
ENGINE = MergeTree()
ORDER BY UserId

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO UserIssue3128
(
	Id
)
VALUES
(
	toInt32(10)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO UserDetailsIssue3128
(
	UserId,
	Age
)
VALUES
(
	toInt32(10),
	toInt32(18)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p_1.FirstName,
	p_1.PersonID,
	p_1.LastName,
	p_1.MiddleName,
	p_1.Gender
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					UserIssue3128 t1
			) as ex,
			p.FirstName as FirstName,
			p.PersonID as PersonID,
			p.LastName as LastName,
			p.MiddleName as MiddleName,
			p.Gender as Gender
		FROM
			Person p
	) p_1
WHERE
	p_1.ex > toInt32(0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UserDetailsIssue3128

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UserIssue3128


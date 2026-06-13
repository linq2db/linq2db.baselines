-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 10

INSERT INTO UserIssue3128
(
	Id
)
VALUES
(
	$Id
)

-- YDB Ydb
DECLARE $UserId Int32
SET     $UserId = 10
DECLARE $Age Int32
SET     $Age = 18

INSERT INTO UserDetailsIssue3128
(
	UserId,
	Age
)
VALUES
(
	$UserId,
	$Age
)

-- YDB Ydb

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		UserIssue3128 t1
;

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	$CTE_1 > 0


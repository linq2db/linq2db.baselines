-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 10

INSERT INTO LoadAsTableUser
(
	Id
)
VALUES
(
	$Id
)

-- DuckDB
DECLARE $UserId INTEGER -- Int32
SET     $UserId = 10
DECLARE $Age INTEGER -- Int32
SET     $Age = 18

INSERT INTO LoadAsTableUserDetails
(
	UserId,
	Age
)
VALUES
(
	$UserId,
	$Age
)

-- DuckDB
SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			LoadAsTableUser t1
	) > 0


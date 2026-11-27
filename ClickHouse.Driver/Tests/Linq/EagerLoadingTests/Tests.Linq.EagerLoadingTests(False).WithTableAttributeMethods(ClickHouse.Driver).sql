-- ClickHouse.Driver ClickHouse
INSERT INTO LoadAsTableUser
(
	Id
)
VALUES
(
	10
)

-- ClickHouse.Driver ClickHouse
INSERT INTO LoadAsTableUserDetails
(
	UserId,
	Age
)
VALUES
(
	10,
	18
)

-- ClickHouse.Driver ClickHouse
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


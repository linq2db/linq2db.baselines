-- ClickHouse.Octonica ClickHouse
INSERT INTO LoadAsTableUser
(
	Id
)
VALUES
(
	10
)

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	a_Details.UserId,
	a_Details.Age
FROM
	LoadAsTableUser t1
		LEFT JOIN LoadAsTableUserDetails a_Details ON t1.Id = a_Details.UserId


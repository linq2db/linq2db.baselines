-- YDB Ydb
DECLARE Id Int32
SET     Id = 10

INSERT INTO LoadAsTableUser
(
	Id
)
VALUES
(
	$Id
)

-- YDB Ydb
DECLARE UserId Int32
SET     UserId = 10
DECLARE Age Int32
SET     Age = 18

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

-- YDB Ydb
SELECT
	t1.Id as Id,
	a_Details.UserId as UserId,
	a_Details.Age as Age
FROM
	LoadAsTableUser t1
		LEFT JOIN LoadAsTableUserDetails a_Details ON t1.Id = a_Details.UserId


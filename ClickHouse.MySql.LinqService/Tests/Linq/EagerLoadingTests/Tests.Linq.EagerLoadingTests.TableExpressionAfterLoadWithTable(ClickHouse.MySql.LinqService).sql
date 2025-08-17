BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO UserIssue3128
(
	Id
)
VALUES
(
	10
)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	a_Details.UserId,
	a_Details.Age
FROM
	UserIssue3128 t1
		LEFT JOIN UserDetailsIssue3128 a_Details ON t1.Id = a_Details.UserId


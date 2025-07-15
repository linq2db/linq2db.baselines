BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PR_1598_Insert_Fluent_Table
(
	Id,
	Name
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Fluent_Table t
WHERE
	t.Id = 1
LIMIT 1


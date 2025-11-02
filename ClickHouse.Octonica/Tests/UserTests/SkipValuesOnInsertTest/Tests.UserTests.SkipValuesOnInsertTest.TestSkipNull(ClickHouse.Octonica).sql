-- ClickHouse.Octonica ClickHouse

INSERT INTO PR_1598_Insert_Null_Table
(
	Id,
	Name
)
VALUES
(
	1,
	'Tommy'
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Null_Table t
WHERE
	t.Id = 1
LIMIT 1


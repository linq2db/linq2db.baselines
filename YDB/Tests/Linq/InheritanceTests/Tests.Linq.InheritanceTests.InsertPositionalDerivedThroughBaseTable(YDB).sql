-- YDB Ydb
INSERT INTO InheritanceFilterPositional
(
	Id,
	Code,
	`Value`
)
VALUES
(
	1,
	1,
	42
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Code as Code,
	t1.`Value` as Value_1
FROM
	InheritanceFilterPositional t1
LIMIT 2


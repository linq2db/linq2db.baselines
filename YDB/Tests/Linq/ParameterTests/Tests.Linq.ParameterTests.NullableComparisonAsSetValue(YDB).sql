-- YDB Ydb
UPDATE
	TestBool
SET
	`Value` = TestBool.`Value` = false OR TestBool.`Value` IS NULL

-- YDB Ydb
SELECT
	r.`Value` as Value_1
FROM
	TestBool r
ORDER BY
	r.Id


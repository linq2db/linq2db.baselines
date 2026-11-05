-- YDB Ydb
UPDATE
	TestBool
SET
	`Value` = CASE
		WHEN TestBool.Id > 0 THEN CASE
			WHEN TestBool.`Value` = false OR TestBool.`Value` IS NULL
				THEN true
			ELSE false
		END
		ELSE NULL
	END

-- YDB Ydb
SELECT
	r.`Value` as Value_1
FROM
	TestBool r
ORDER BY
	r.Id


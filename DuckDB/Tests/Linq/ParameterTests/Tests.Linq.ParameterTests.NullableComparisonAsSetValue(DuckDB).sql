-- DuckDB
UPDATE
	TestBool
SET
	"Value" = TestBool."Value" = False OR TestBool."Value" IS NULL

-- DuckDB
SELECT
	r."Value"
FROM
	TestBool r
ORDER BY
	r.Id


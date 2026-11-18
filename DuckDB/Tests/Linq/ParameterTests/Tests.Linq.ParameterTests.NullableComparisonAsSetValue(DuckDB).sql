-- DuckDB
UPDATE
	TestBool
SET
	"Value" = CASE
		WHEN TestBool."Value" = False OR TestBool."Value" IS NULL
			THEN True
		ELSE False
	END

-- DuckDB
SELECT
	r."Value"
FROM
	TestBool r
ORDER BY
	r.Id


-- DuckDB
DECLARE $test TIMESTAMP -- DateTime2
SET     $test = '2026-06-06 02:01:01.000000'::TIMESTAMP

UPDATE
	ShiftedDateRow
SET
	"Date" = CASE
		WHEN ShiftedDateRow."Date" IS NOT NULL THEN $test
		ELSE ShiftedDateRow.Plain + Interval '1 Day'
	END

-- DuckDB
SELECT
	t1.Id,
	t1.Plain,
	t1."Date"
FROM
	ShiftedDateRow t1
ORDER BY
	t1.Id


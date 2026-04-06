-- DuckDB
DECLARE $value  -- Int32
SET     $value = 6

SELECT
	r.Id,
	r.Field,
	r.FieldN,
	r.FieldClass
FROM
	OperatorTable r
WHERE
	3 * r.Field = CAST($value AS INTEGER) AND 3 * r.FieldN = CAST($value AS INTEGER) AND
	3 * r.FieldClass = CAST($value AS INTEGER)


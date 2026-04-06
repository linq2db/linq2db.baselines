-- DuckDB
DECLARE $value  -- Int32
SET     $value = 5

SELECT
	r.Id,
	r.Field,
	r.FieldN,
	r.FieldClass
FROM
	OperatorTable r
WHERE
	r.Field + 3 = CAST($value AS INTEGER) AND r.FieldN + 3 = CAST($value AS INTEGER) AND
	r.FieldClass + 3 = CAST($value AS INTEGER)


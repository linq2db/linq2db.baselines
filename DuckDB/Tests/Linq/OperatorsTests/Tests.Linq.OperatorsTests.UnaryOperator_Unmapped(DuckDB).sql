-- DuckDB
DECLARE $value  -- Int32
SET     $value = -2

SELECT
	r.Id,
	r.Field,
	r.FieldN,
	r.FieldClass
FROM
	OperatorTable r
WHERE
	-r.Field = CAST($value AS INTEGER) AND -r.FieldN = CAST($value AS INTEGER) AND
	-r.FieldClass = CAST($value AS INTEGER)


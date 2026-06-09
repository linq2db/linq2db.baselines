-- YDB Ydb
DECLARE $value Int32
SET     $value = 6

SELECT
	r.Id as Id,
	r.Field as Field,
	r.FieldN as FieldN,
	r.FieldClass as FieldClass
FROM
	OperatorTable r
WHERE
	3 * r.Field = $value AND 3 * r.FieldN = $value AND
	3 * r.FieldClass = $value


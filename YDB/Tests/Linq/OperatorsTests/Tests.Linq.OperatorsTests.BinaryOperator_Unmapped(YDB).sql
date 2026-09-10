-- YDB Ydb
DECLARE $value Int32
SET     $value = 2

SELECT
	r.Id as Id,
	r.Field as Field,
	r.FieldN as FieldN,
	r.FieldClass as FieldClass
FROM
	OperatorTable r
WHERE
	r.Field = $value AND r.FieldN = $value AND r.FieldClass = $value


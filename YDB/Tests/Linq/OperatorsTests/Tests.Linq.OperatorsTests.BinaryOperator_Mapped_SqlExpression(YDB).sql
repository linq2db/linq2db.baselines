-- YDB Ydb
DECLARE $value Int32
SET     $value = 5

SELECT
	r.Id as Id,
	r.Field as Field,
	r.FieldN as FieldN,
	r.FieldClass as FieldClass
FROM
	OperatorTable r
WHERE
	(r.Field + 3) = $value AND (r.FieldN + 3) = $value AND
	(r.FieldClass + 3) = $value


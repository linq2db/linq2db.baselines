-- YDB Ydb

SELECT
	r.ID as ID,
	r.Bool as Bool
FROM
	NullableBool r
WHERE
	r.Bool = true OR r.Bool IS NULL


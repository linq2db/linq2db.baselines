-- YDB Ydb

SELECT
	CASE
		WHEN t.EnumValue = 'F'u THEN 'First'u
		WHEN t.EnumValue = 'S'u THEN 'Second'u
		WHEN t.EnumValue = 'T'u THEN 'Third'u
		ELSE t.EnumValue
	END as c1
FROM
	MapValueTable t
LIMIT 1


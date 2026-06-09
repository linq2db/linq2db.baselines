-- YDB Ydb
DECLARE $text Text(3) -- String
SET     $text = '123'u

SELECT
	Unwrap(CAST(c_1.ChildID AS Text)) || ','u || Coalesce($text, ''u) as c1
FROM
	Child c_1
LIMIT 1


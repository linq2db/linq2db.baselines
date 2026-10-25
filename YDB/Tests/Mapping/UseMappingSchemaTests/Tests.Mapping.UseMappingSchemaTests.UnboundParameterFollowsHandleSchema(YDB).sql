-- YDB Ydb
DECLARE $token Text(2) -- String
SET     $token = 'Bx'u

SELECT
	$token as c1
FROM
	Parent p
WHERE
	p.ParentID = 1


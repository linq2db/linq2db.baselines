-- YDB Ydb
DECLARE $s1 Text(7) -- String
SET     $s1 = '0 \x00 \' 0'u

SELECT
	$s1 as c1


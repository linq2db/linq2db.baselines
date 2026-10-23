-- YDB Ydb
DECLARE $s1 Text(7) -- String
SET     $s1 = '\x00 \x00 \' \x00'u

SELECT
	$s1 as c1


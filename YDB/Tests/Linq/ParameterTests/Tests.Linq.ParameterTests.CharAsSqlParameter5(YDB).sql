-- YDB Ydb
DECLARE $s1 Text(1) -- StringFixedLength
SET     $s1 = '\x00'u

SELECT
	$s1 as c1


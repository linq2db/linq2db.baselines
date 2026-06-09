-- YDB Ydb
DECLARE $CharFld Text(1) -- StringFixedLength
SET     $CharFld = 'P'u

INSERT INTO Issue1279Table
(
	CharFld
)
VALUES
(
	$CharFld
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.CharFld as CharFld
FROM
	Issue1279Table t1
LIMIT 1


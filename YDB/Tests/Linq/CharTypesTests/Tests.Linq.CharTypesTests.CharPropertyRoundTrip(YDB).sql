-- YDB Ydb
DECLARE CharFld Text(1) -- StringFixedLength
SET     CharFld = 'P'u

INSERT INTO CharFieldRecord
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
	CharFieldRecord t1
LIMIT 1


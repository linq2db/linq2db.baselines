-- YDB Ydb

CREATE TABLE aa
(
	bb Int32,
	cc Text,

	PRIMARY KEY (bb)
)

-- YDB Ydb
DECLARE $bb Int32
SET     $bb = 99
DECLARE $cc Text(5) -- String
SET     $cc = 'hallo'u

INSERT INTO aa
(
	bb,
	cc
)
VALUES
(
	$bb,
	$cc
)

-- YDB Ydb

SELECT
	t1.bb as bb,
	t1.cc as cc
FROM
	aa t1

-- YDB Ydb

DROP TABLE aa


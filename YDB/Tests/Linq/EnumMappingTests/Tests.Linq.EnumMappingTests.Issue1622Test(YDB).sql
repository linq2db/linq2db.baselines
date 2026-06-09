-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $SomeText Text(13) -- String
SET     $SomeText = 'Value1_suffix'u

INSERT INTO Issue1622Table
(
	Id,
	SomeText
)
VALUES
(
	$Id,
	$SomeText
)

-- YDB Ydb

SELECT
	e.Id as Id,
	e.SomeText as SomeText
FROM
	Issue1622Table e
WHERE
	e.SomeText = 'Value1_suffix'
LIMIT 2

-- YDB Ydb

SELECT
	e.Id as Id,
	e.SomeText as SomeText
FROM
	Issue1622Table e
WHERE
	e.Id = 1
LIMIT 2


-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $SomeText NVarChar(13) -- String
SET     $SomeText = 'Value1_suffix'

INSERT INTO Issue1622Table
(
	Id,
	SomeText
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($SomeText AS VARCHAR)
)

-- DuckDB

SELECT
	e.Id,
	e.SomeText
FROM
	Issue1622Table e
WHERE
	e.SomeText = 'Value1_suffix'
LIMIT 2

-- DuckDB

SELECT
	e.Id,
	e.SomeText
FROM
	Issue1622Table e
WHERE
	e.Id = 1
LIMIT 2


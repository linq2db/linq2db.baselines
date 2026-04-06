-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 0
DECLARE $ClaimedKeyType NVarChar(2) -- String
SET     $ClaimedKeyType = 'EC'
DECLARE $ClaimedKeyTypeN  -- Object
SET     $ClaimedKeyTypeN = NULL

INSERT INTO Issue1554FluentTable
(
	Id,
	ClaimedKeyType,
	ClaimedKeyTypeN
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($ClaimedKeyType AS VARCHAR),
	CAST($ClaimedKeyTypeN AS VARCHAR)
)

-- DuckDB

SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554FluentTable t1
LIMIT 2


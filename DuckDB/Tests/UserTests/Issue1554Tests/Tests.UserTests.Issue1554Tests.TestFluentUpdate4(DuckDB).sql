-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 0
DECLARE $ClaimedKeyType NVarChar(3) -- String
SET     $ClaimedKeyType = 'RSA'
DECLARE $ClaimedKeyTypeN NVarChar(3) -- String
SET     $ClaimedKeyTypeN = 'RSA'

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
DECLARE $ClaimedKeyType NVarChar(2) -- String
SET     $ClaimedKeyType = 'EC'
DECLARE $ClaimedKeyTypeN NVarChar(2) -- String
SET     $ClaimedKeyTypeN = 'EC'

UPDATE
	Issue1554FluentTable
SET
	ClaimedKeyType = CAST($ClaimedKeyType AS VARCHAR),
	ClaimedKeyTypeN = CAST($ClaimedKeyTypeN AS VARCHAR)
WHERE
	Issue1554FluentTable.Id = 0

-- DuckDB

SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554FluentTable t1
LIMIT 2


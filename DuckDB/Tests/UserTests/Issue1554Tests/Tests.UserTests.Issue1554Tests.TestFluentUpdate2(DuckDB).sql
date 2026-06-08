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
	$Id,
	$ClaimedKeyType,
	$ClaimedKeyTypeN
)

-- DuckDB
DECLARE $ClaimedKeyType NVarChar(3) -- String
SET     $ClaimedKeyType = 'EC'
DECLARE $ClaimedKeyTypeN NVarChar(3) -- String
SET     $ClaimedKeyTypeN = 'EC'

UPDATE
	Issue1554FluentTable
SET
	ClaimedKeyType = $ClaimedKeyType,
	ClaimedKeyTypeN = $ClaimedKeyTypeN
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


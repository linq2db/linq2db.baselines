-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 0
DECLARE $ClaimedKeyType NVarChar(3) -- String
SET     $ClaimedKeyType = 'EC'
DECLARE $ClaimedKeyTypeN NVarChar(3) -- String
SET     $ClaimedKeyTypeN = 'EC'

INSERT INTO Issue1554Table
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

SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554Table t1
LIMIT 2


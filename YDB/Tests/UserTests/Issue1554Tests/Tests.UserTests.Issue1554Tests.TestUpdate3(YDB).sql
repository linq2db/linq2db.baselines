-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 0
DECLARE $ClaimedKeyType Text(3) -- String
SET     $ClaimedKeyType = 'RSA'u
DECLARE $ClaimedKeyTypeN Text(3) -- String
SET     $ClaimedKeyTypeN = 'RSA'u

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

-- YDB Ydb
DECLARE $ClaimedKeyType Text(2) -- String
SET     $ClaimedKeyType = 'EC'u
DECLARE $ClaimedKeyTypeN Text(2) -- String
SET     $ClaimedKeyTypeN = 'EC'u

UPDATE
	Issue1554Table
SET
	ClaimedKeyType = $ClaimedKeyType,
	ClaimedKeyTypeN = $ClaimedKeyTypeN
WHERE
	Issue1554Table.Id = 0

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.ClaimedKeyType as ClaimedKeyType,
	t1.ClaimedKeyTypeN as ClaimedKeyTypeN
FROM
	Issue1554Table t1
LIMIT 2


-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 0
DECLARE $ClaimedKeyType Text(2) -- String
SET     $ClaimedKeyType = 'EC'u
DECLARE $ClaimedKeyTypeN Text(2) -- String
SET     $ClaimedKeyTypeN = 'EC'u

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

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.ClaimedKeyType as ClaimedKeyType,
	t1.ClaimedKeyTypeN as ClaimedKeyTypeN
FROM
	Issue1554FluentTable t1
LIMIT 2


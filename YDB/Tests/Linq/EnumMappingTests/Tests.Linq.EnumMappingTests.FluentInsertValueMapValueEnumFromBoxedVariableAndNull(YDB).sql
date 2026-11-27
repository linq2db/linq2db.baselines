-- YDB Ydb
DECLARE Id Int32
SET     Id = 0
DECLARE ClaimedKeyType Text(2) -- String
SET     ClaimedKeyType = 'EC'u
DECLARE ClaimedKeyTypeN Text -- String
SET     ClaimedKeyTypeN = NULL

INSERT INTO FluentMappedEnumKeyRecord
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
	FluentMappedEnumKeyRecord t1
LIMIT 2


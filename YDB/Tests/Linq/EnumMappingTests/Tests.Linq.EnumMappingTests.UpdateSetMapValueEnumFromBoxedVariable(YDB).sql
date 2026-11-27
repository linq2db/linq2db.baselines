-- YDB Ydb
DECLARE Id Int32
SET     Id = 0
DECLARE ClaimedKeyType Text(3) -- String
SET     ClaimedKeyType = 'RSA'u
DECLARE ClaimedKeyTypeN Text(3) -- String
SET     ClaimedKeyTypeN = 'RSA'u

INSERT INTO MappedEnumKeyRecord
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
DECLARE ClaimedKeyType Text(2) -- String
SET     ClaimedKeyType = 'EC'u
DECLARE ClaimedKeyTypeN Text(2) -- String
SET     ClaimedKeyTypeN = 'EC'u

UPDATE
	MappedEnumKeyRecord
SET
	ClaimedKeyType = $ClaimedKeyType,
	ClaimedKeyTypeN = $ClaimedKeyTypeN
WHERE
	MappedEnumKeyRecord.Id = 0

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.ClaimedKeyType as ClaimedKeyType,
	t1.ClaimedKeyTypeN as ClaimedKeyTypeN
FROM
	MappedEnumKeyRecord t1
LIMIT 2


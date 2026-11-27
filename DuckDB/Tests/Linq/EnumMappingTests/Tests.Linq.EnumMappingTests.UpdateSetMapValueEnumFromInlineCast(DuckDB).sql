-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 0
DECLARE $ClaimedKeyType NVarChar(3) -- String
SET     $ClaimedKeyType = 'RSA'
DECLARE $ClaimedKeyTypeN NVarChar(3) -- String
SET     $ClaimedKeyTypeN = 'RSA'

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

-- DuckDB
DECLARE $ClaimedKeyType NVarChar(2) -- String
SET     $ClaimedKeyType = 'EC'
DECLARE $ClaimedKeyTypeN NVarChar(2) -- String
SET     $ClaimedKeyTypeN = 'EC'

UPDATE
	MappedEnumKeyRecord
SET
	ClaimedKeyType = $ClaimedKeyType,
	ClaimedKeyTypeN = $ClaimedKeyTypeN
WHERE
	MappedEnumKeyRecord.Id = 0

-- DuckDB
SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	MappedEnumKeyRecord t1
LIMIT 2


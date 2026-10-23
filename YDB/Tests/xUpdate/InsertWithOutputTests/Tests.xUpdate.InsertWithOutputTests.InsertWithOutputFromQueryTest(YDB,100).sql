-- YDB Ydb
DECLARE $param Int32
SET     $param = 100
DECLARE $ValueStr Text(3) -- String
SET     $ValueStr = '100'u

INSERT INTO DestinationTable
(
	Id,
	`Value`,
	ValueStr
)
SELECT
	s.Id + $param as Id,
	s.`Value` + $param as `Value`,
	Coalesce(s.ValueStr, ''u) || Coalesce($ValueStr, ''u) as ValueStr
FROM
	TableWithData s
WHERE
	s.Id > 3
RETURNING
	Id,
	`Value`,
	ValueStr

-- YDB Ydb
DECLARE $param Int32
SET     $param = 100
DECLARE $ValueStr Text(3) -- String
SET     $ValueStr = '100'u

SELECT
	s.Id + $param as Id,
	s.`Value` + $param as Value_1,
	Coalesce(s.ValueStr, ''u) || Coalesce($ValueStr, ''u) as ValueStr
FROM
	TableWithData s
WHERE
	s.Id > 3


-- YDB Ydb
DECLARE $param Int32
SET     $param = 200
DECLARE $param_1 Text(3) -- String
SET     $param_1 = '200'u

INSERT INTO DestinationTable
(
	Id,
	`Value`,
	ValueStr
)
SELECT
	s.Id + $param as Id,
	s.`Value` + $param as `Value`,
	Coalesce(s.ValueStr, ''u) || Coalesce($param_1, ''u) as ValueStr
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
SET     $param = 200
DECLARE $param_1 Text(3) -- String
SET     $param_1 = '200'u

SELECT
	s.Id + $param as Id,
	s.`Value` + $param as Value_1,
	Coalesce(s.ValueStr, ''u) || Coalesce($param_1, ''u) as ValueStr
FROM
	TableWithData s
WHERE
	s.Id > 3


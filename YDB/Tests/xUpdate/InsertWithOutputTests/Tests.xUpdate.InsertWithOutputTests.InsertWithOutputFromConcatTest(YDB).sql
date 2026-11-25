-- YDB Ydb
INSERT INTO DestinationTable
(
	Id,
	`Value`,
	ValueStr
)
SELECT
	s.Id as Id,
	s.`Value` as `Value`,
	s.ValueStr as ValueStr
FROM
	TableWithData s
WHERE
	s.Id <= 2
UNION ALL
SELECT
	s_1.Id as Id,
	s_1.`Value` as `Value`,
	s_1.ValueStr as ValueStr
FROM
	TableWithData s_1
WHERE
	s_1.Id >= 9
RETURNING
	Id,
	`Value`,
	ValueStr

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	DestinationTable t1


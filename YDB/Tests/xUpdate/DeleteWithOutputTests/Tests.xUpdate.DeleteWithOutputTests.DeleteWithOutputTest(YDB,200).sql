-- YDB Ydb

SELECT
	s.Id as Id,
	s.`Value` as Value_1,
	s.ValueStr as ValueStr
FROM
	TableWithData s
WHERE
	s.Id > 3

-- YDB Ydb

DELETE FROM
	TableWithData
WHERE
	TableWithData.Id > 3
RETURNING
	Id,
	`Value`,
	ValueStr


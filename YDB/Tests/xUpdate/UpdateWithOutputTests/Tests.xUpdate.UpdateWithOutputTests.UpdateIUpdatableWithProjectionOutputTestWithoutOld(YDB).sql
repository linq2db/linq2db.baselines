-- YDB Ydb

UPDATE
	TableWithData
SET
	`Value` = TableWithData.`Value` + 1,
	ValueStr = Coalesce(TableWithData.ValueStr, ''u) || 'Upd'u
WHERE
	TableWithData.Id > 3
RETURNING
	`Value`


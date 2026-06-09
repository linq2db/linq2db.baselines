-- YDB Ydb

SELECT
	k_1.ID as Id,
	k_1.NAME as Name,
	Timestamp('2020-02-29T17:54:55.123123Z') as ToDelete
FROM
	Issue1189Customer k_1


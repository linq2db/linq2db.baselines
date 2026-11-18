-- YDB Ydb
SELECT
	e.`Dec` / j.`Dec` as c1
FROM
	MissedDivisorEntity e
		LEFT JOIN MissedDivisorEntity j ON j.Id = e.Id + 1000


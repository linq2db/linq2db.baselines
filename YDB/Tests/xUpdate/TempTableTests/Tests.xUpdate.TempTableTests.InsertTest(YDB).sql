-- YDB Ydb

INSERT INTO Table2
(
	ID
)
SELECT
	t.ID as ID
FROM
	Table1 t

-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.`Date` as Date_1
FROM
	Table2 t1


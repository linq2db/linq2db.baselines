-- ClickHouse.MySql ClickHouse
INSERT INTO CharFieldRecord
(
	CharFld
)
VALUES
(
	'P'
)

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.CharFld
FROM
	CharFieldRecord t1
LIMIT 1


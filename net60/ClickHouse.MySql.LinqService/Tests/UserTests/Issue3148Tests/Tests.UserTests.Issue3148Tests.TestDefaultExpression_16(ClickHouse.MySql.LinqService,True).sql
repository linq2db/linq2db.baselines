BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	selectParam.LastName,
	toInt32(0),
	NULL,
	Coalesce(NULL, 'M')
FROM
	Person selectParam
GROUP BY
	selectParam.LastName

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	selectParam.LastName,
	toInt32(0),
	NULL,
	Coalesce(NULL, 'M')
FROM
	Person selectParam
GROUP BY
	selectParam.LastName


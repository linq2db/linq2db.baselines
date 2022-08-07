BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Key_1
FROM
	(
		SELECT
			CASE
				WHEN selectParam.ParentID > toInt32(2)
					THEN CASE
					WHEN selectParam.ParentID > toInt32(3)
						THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END as Key_1
		FROM
			Child selectParam
	) t1
GROUP BY
	t1.Key_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	selectParam.ParentID,
	selectParam.ChildID
FROM
	Child selectParam
WHERE
	CASE
		WHEN selectParam.ParentID > toInt32(2)
			THEN CASE
			WHEN selectParam.ParentID > toInt32(3)
				THEN '1'
			ELSE '2'
		END
		ELSE '3'
	END = '1'


-- YDB Ydb
DECLARE $take Int32
SET     $take = 1

$CTE_1 = 	SELECT
		item_1.`Value` as Key_1
	FROM
		TakeSkipClass item_1
	GROUP BY
		item_1.`Value`
	HAVING
		COUNT(*) > 1
	LIMIT $take
;

SELECT
	EXISTS(
		SELECT
			1
		FROM
			$CTE_1 t1
	) as c1


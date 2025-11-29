-- ClickHouse.Driver ClickHouse

SELECT
	arrayStringConcat(groupArray(toString(concat('test:', toString(grp_1.ch)))), ';')
FROM
	(
		SELECT
			ch.item % 10 as Key_1,
			ch.item as ch
		FROM
			Parent grp
				CROSS JOIN (
					SELECT 11 AS item
					UNION ALL
					SELECT 13) ch
		ORDER BY
			grp.ParentID
	) grp_1
GROUP BY
	grp_1.Key_1


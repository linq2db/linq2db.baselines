-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat(groupArray(toString(concat('test:', toString(grp_1.ch)))), ';')
FROM
	(
		SELECT
			ch.item % 10 as Key_1,
			ch.item as ch
		FROM
			Parent grp
				CROSS JOIN VALUES('item Nullable(Int32)', (11), (13)) ch
	) grp_1
GROUP BY
	grp_1.Key_1


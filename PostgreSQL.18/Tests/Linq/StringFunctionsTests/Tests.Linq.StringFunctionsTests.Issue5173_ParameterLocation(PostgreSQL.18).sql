-- PostgreSQL.18 PostgreSQL

SELECT
	STRING_AGG(CONCAT_WS('', 'test:', grp_1.ch), ';')
FROM
	(
		SELECT
			(ch.item::decimal % 10)::decimal as "Key_1",
			ch.item as ch
		FROM
			"Parent" grp
				CROSS JOIN (VALUES
					(11), (13)
				) ch(item)
	) grp_1
GROUP BY
	grp_1."Key_1"


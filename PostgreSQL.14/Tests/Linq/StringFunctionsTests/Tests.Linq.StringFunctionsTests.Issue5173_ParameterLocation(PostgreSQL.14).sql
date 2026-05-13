-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	STRING_AGG('test:' || grp_1.ch::text, ';')
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


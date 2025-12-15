-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	STRING_AGG('test:' || grp_1.ch::VarChar(11), ';')
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
		ORDER BY
			grp."ParentID"
	) grp_1
GROUP BY
	grp_1."Key_1"


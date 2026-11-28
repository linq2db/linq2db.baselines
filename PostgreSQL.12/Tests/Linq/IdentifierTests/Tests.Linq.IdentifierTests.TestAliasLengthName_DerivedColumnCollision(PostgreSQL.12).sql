-- PostgreSQL.12 PostgreSQL12
SELECT
	x.abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghi,
	x.abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghi_1
FROM
	(
		SELECT
			p."ParentID" + 1 as abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghi,
			p."ParentID" + 2 as abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghi_1
		FROM
			"Parent" p
	) x
WHERE
	x.abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghi > 0 AND
	x.abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghi_1 > 0


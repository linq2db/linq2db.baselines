-- Oracle.11.Managed Oracle11
SELECT
	x."abcdefghijabcdefghijabcdef",
	x."abcdefghijabcdefghijabcdef_1"
FROM
	(
		SELECT
			p."ParentID" + 1 as "abcdefghijabcdefghijabcdef",
			p."ParentID" + 2 as "abcdefghijabcdefghijabcdef_1"
		FROM
			"Parent" p
	) x
WHERE
	x."abcdefghijabcdefghijabcdef" > 0 AND x."abcdefghijabcdefghijabcdef_1" > 0


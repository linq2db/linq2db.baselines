BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x_1."StrValue"
FROM
	(
		SELECT
			Lower(SUBSTR(RAWTOHEX(x."Value1"), 7, 2) || SUBSTR(RAWTOHEX(x."Value1"), 5, 2) || SUBSTR(RAWTOHEX(x."Value1"), 3, 2) || SUBSTR(RAWTOHEX(x."Value1"), 1, 2) || '-' || SUBSTR(RAWTOHEX(x."Value1"), 11, 2) || SUBSTR(RAWTOHEX(x."Value1"), 9, 2) || '-' || SUBSTR(RAWTOHEX(x."Value1"), 15, 2) || SUBSTR(RAWTOHEX(x."Value1"), 13, 2) || '-' || SUBSTR(RAWTOHEX(x."Value1"), 17, 4) || '-' || SUBSTR(RAWTOHEX(x."Value1"), 21, 12)) as "StrValue"
		FROM
			"Parent" x
		UNION ALL
		SELECT
			Lower(SUBSTR(RAWTOHEX(a_Parent1."Value1"), 7, 2) || SUBSTR(RAWTOHEX(a_Parent1."Value1"), 5, 2) || SUBSTR(RAWTOHEX(a_Parent1."Value1"), 3, 2) || SUBSTR(RAWTOHEX(a_Parent1."Value1"), 1, 2) || '-' || SUBSTR(RAWTOHEX(a_Parent1."Value1"), 11, 2) || SUBSTR(RAWTOHEX(a_Parent1."Value1"), 9, 2) || '-' || SUBSTR(RAWTOHEX(a_Parent1."Value1"), 15, 2) || SUBSTR(RAWTOHEX(a_Parent1."Value1"), 13, 2) || '-' || SUBSTR(RAWTOHEX(a_Parent1."Value1"), 17, 4) || '-' || SUBSTR(RAWTOHEX(a_Parent1."Value1"), 21, 12)) as "StrValue"
		FROM
			"Parent" t1
				INNER JOIN "Child" c_1 ON t1."ParentID" = c_1."ParentID"
				INNER JOIN "Parent" a_Parent1 ON c_1."ParentID" = a_Parent1."ParentID"
	) x_1
WHERE
	x_1."StrValue" IS NOT NULL


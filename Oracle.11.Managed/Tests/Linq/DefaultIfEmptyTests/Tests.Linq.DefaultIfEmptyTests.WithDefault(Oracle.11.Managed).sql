BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 0

SELECT
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			1 as "c1"
		FROM SYS.DUAL
	) t2
		LEFT JOIN (
			SELECT
				t1."ParentID",
				t1."ChildID"
			FROM
				"Child" t1
			WHERE
				ROWNUM <= :take
		) d ON 1=1


BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 101
DECLARE @skip_1 Int32
SET     @skip_1 = 1

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" IN (
		SELECT
			t3."ParentID"
		FROM
			(
				SELECT
					t2."ParentID"
				FROM
					(
						SELECT
							t1."ParentID",
							ROWNUM as RN
						FROM
							"Parent" t1
						WHERE
							ROWNUM <= :skip
					) t2
				WHERE
					t2.RN > :skip_1
			) t3
	)


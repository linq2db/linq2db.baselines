BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 101
DECLARE @skip Int32
SET     @skip = 1

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
							(
								SELECT
									p."ParentID"
								FROM
									"Parent" p
							) t1
						WHERE
							ROWNUM <= :take
					) t2
				WHERE
					t2.RN > :skip
			) t3
	)


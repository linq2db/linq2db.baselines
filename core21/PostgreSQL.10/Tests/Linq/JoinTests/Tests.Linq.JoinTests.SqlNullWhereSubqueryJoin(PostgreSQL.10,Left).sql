BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 10

SELECT
	p."ParentID",
	p."Value1"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1"
		FROM
			"Parent" t1
		LIMIT :take
	) p1
		LEFT JOIN (
			SELECT
				t2."ParentID",
				t2."Value1"
			FROM
				"Parent" t2
			LIMIT :take_1
		) p ON p1."ParentID" = p."ParentID" AND (p1."Value1" = p."Value1" OR p1."Value1" IS NULL AND p."Value1" IS NULL)


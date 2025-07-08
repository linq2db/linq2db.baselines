BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	p2_1."ParentID",
	p2_1."Value1"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1"
		FROM
			"Parent" t1
		LIMIT :take
	) p1
		RIGHT JOIN (
			SELECT
				p2."ParentID",
				p2."Value1"
			FROM
				(
					SELECT
						p."ParentID",
						p."Value1"
					FROM
						"Parent" p
					LIMIT 10
				) p2
		) p2_1 ON p1."ParentID" = p2_1."ParentID" AND (p1."Value1" = p2_1."Value1" OR p1."Value1" IS NULL AND p2_1."Value1" IS NULL)


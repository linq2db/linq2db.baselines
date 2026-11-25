-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	c_1."ChildID",
	CASE
		WHEN n."A" IS NULL THEN NULL
		WHEN n."B" IS NULL THEN c_1."ParentID"
		ELSE NULL
	END
FROM
	"Child" c_1
		LEFT JOIN (VALUES
			(11,NULL), (21,1)
		) n("A", "B") ON n."A" = c_1."ChildID"
WHERE
	c_1."ChildID" = 11 OR c_1."ChildID" = 21 OR c_1."ChildID" = 22

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	c_1."ChildID",
	CASE
		WHEN n_1.c1 IS NULL THEN NULL
		WHEN n_1."B" IS NULL THEN c_1."ParentID"
		ELSE NULL
	END
FROM
	"Child" c_1
		LEFT JOIN (
			SELECT
				n."B",
				n."A",
				1 as c1
			FROM
				(VALUES
					(11,NULL), (21,1)
				) n("A", "B")
		) n_1 ON n_1."A" >= c_1."ChildID" AND n_1."A" <= c_1."ChildID"
WHERE
	c_1."ChildID" = 11 OR c_1."ChildID" = 21 OR c_1."ChildID" = 22


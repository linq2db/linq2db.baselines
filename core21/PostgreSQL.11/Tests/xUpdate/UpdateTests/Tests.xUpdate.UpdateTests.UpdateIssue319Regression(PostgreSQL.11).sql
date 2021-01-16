BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 100500
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:ParentID,
	:Value1
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 100500
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."ParentID"
FROM
	"Parent" t1
WHERE
	t1."ParentID" = :id
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 100500
DECLARE @id Integer -- Int32
SET     @id = 100500
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 100500

UPDATE
	"Parent"
SET
	"Value1" = :ParentID
FROM
	(
		SELECT
			t2."ParentID",
			(
				SELECT
					Count(*)
				FROM
					"Parent" t1
				WHERE
					t1."ParentID" = :id
			) as ex,
			t2."Value1"
		FROM
			"Parent" t2
	) t3
WHERE
	t3."ParentID" = :id_1 AND t3.ex > 0 AND "Parent"."ParentID" = t3."ParentID"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 100500

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :id


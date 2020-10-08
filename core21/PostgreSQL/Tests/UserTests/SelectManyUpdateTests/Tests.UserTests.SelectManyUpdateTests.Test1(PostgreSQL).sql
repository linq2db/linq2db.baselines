BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

UPDATE
	"Parent"
SET
	"Value1" = :Value1
FROM
	"Parent" c_1
WHERE
	"Parent"."ParentID" IN (0, 0) AND "Parent"."ParentID" = "Parent"."Value1"


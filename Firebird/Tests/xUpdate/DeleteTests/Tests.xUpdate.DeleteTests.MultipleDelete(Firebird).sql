BeforeExecute
-- Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" >= 1000

BeforeExecute
-- Firebird

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT 1000,NULL FROM rdb$database UNION ALL
SELECT 1001,NULL FROM rdb$database

BeforeExecute
-- Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	("t1"."ParentID" = 1000 AND "t1"."Value1" IS NULL OR "t1"."ParentID" = 1001 AND "t1"."Value1" IS NULL)

BeforeExecute
-- Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" >= 1000


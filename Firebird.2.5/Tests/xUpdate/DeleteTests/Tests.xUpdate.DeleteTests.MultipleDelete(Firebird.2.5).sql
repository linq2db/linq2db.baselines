﻿BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" >= 1000

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT 1000,NULL FROM rdb$database UNION ALL
SELECT 1001,NULL FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1000 AND "p"."Value1" IS NULL OR "p"."ParentID" = 1001 AND "p"."Value1" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" >= 1000


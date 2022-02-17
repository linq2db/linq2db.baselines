BeforeExecute
-- Firebird

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT 111001,NULL FROM rdb$database

BeforeExecute
-- Firebird

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT 111001,0 FROM rdb$database


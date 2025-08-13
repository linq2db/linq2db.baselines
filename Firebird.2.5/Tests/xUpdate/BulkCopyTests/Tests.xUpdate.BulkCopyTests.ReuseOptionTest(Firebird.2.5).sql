BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT 111001,NULL FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT 111001,0 FROM rdb$database

BeforeExecute
DisposeTransaction

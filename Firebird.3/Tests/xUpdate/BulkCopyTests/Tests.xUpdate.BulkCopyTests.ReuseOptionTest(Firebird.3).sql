BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT 111001,NULL FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT 111001,0 FROM rdb$database

BeforeExecute
DisposeTransaction

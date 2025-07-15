BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(111001,NULL)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(111001,0)

BeforeExecute
DisposeTransaction

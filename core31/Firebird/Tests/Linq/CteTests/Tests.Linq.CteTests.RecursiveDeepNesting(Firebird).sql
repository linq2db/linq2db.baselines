BeforeExecute
-- Firebird

CREATE TABLE "HierarchyTree"
(
	"Id"       Int NOT NULL,
	"ParentId" Int
)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'HierarchyTree')) THEN
		EXECUTE STATEMENT 'DROP TABLE "HierarchyTree"';
END


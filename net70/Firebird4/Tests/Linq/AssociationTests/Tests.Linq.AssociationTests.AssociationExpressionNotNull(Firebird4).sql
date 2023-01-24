BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullParent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullParent"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullParent')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "NotNullParent"
			(
				ID Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "NotNullParent"
(
	ID
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullChild')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullChild"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullChild')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "NotNullChild"
			(
				"ParentID" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "NotNullChild"
(
	"ParentID"
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

SELECT
	"a_ChildInner"."ParentID"
FROM
	"NotNullParent" "p"
		INNER JOIN "NotNullChild" "a_ChildInner" ON "p".ID = "a_ChildInner"."ParentID"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullChild')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullChild"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullParent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullParent"';
END


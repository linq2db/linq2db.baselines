BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullParent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullParent"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

INSERT INTO "NotNullParent"
(
	ID
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullChild')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullChild"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

INSERT INTO "NotNullChild"
(
	"ParentID"
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"NotNullParent" "p"
		INNER JOIN "NotNullChild" "a_ChildInner" ON "p".ID = "a_ChildInner"."ParentID"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullChild')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullChild"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullParent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullParent"';
END


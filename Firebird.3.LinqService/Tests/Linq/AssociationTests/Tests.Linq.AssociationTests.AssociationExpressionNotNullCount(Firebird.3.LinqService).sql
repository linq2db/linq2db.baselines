BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullParent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullParent"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO "NotNullParent"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 2

INSERT INTO "NotNullParent"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullChild')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullChild"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

INSERT INTO "NotNullChild"
(
	"ParentID"
)
VALUES
(
	@ParentID
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"NotNullParent" "p"
		INNER JOIN "NotNullChild" "a_ChildInner" ON "p".ID = "a_ChildInner"."ParentID"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullChild')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullChild"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NotNullParent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NotNullParent"';
END


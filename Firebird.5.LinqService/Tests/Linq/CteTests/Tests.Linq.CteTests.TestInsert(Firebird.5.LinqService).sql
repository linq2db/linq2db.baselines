BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CteChild')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CteChild"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CteChild')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CteChild"
			(
				"ChildID"  Int NOT NULL,
				"ParentID" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "CteChild"
(
	"ChildID",
	"ParentID"
)
WITH CTE1_ ("ParentID")
AS
(
	SELECT
		"c_1"."ParentID"
	FROM
		"Child" "c_1"
	WHERE
		"c_1"."ParentID" > 1
),
LAST0 ("ParentID", "ChildID")
AS
(
	SELECT
		"c4"."ParentID",
		"c4"."ChildID"
	FROM
		"Child" "c4"
	WHERE
		Mod("c4"."ParentID", 2) = 0
)
SELECT
	"c4_1"."ChildID",
	"c4_1"."ParentID"
FROM
	CTE1_ "p"
		INNER JOIN LAST0 "c4_1" ON "c4_1"."ParentID" = "p"."ParentID"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ChildID",
	"t1"."ParentID"
FROM
	"CteChild" "t1"
ORDER BY
	"t1"."ChildID",
	"t1"."ParentID"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"c4"."ChildID",
	"c4"."ParentID"
FROM
	"Child" "p"
		INNER JOIN "Child" "c4" ON "c4"."ParentID" = "p"."ParentID"
WHERE
	"p"."ParentID" > 1 AND Mod("c4"."ParentID", 2) = 0
ORDER BY
	"c4"."ChildID",
	"c4"."ParentID"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CteChild')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CteChild"';
END


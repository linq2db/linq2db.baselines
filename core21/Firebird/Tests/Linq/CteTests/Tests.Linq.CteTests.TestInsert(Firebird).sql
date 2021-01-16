BeforeExecute
-- Firebird

CREATE TABLE "CteChild"
(
	"ChildID"  Int NOT NULL,
	"ParentID" Int NOT NULL
)

BeforeExecute
-- Firebird

INSERT INTO "CteChild"
(
	"ChildID",
	"ParentID"
)
SELECT * FROM
(
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
)

BeforeExecute
-- Firebird

DROP TABLE "CteChild"


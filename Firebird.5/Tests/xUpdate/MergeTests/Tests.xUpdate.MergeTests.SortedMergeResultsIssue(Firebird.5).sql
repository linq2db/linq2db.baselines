﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"Parent" "t1"

BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"Child" "t1"

BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"GrandChild" "t1"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 20

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @LeftId Integer -- Int32
SET     @LeftId = 100
DECLARE @RightId Integer -- Int32
SET     @RightId = 200

INSERT INTO "GrandChild"
(
	"GrandChildID",
	"ParentID",
	"ChildID"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@LeftId AS Int),
	CAST(@RightId AS Int)
)

BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "GrandChild" "Target"
USING (
	SELECT
		"t2"."ChildID" as "source_RightId"
	FROM
		"Parent" "t1"
			CROSS JOIN "Child" "t2"
) "Source"
(
	"source_RightId"
)
ON ("Target"."GrandChildID" = "Source"."source_RightId")

WHEN NOT MATCHED THEN
INSERT
(
	"ChildID"
)
VALUES
(
	"Source"."source_RightId"
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."GrandChildID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"GrandChild" "t1"
ORDER BY
	"t1"."GrandChildID",
	"t1"."ChildID"

BeforeExecute
DisposeTransaction

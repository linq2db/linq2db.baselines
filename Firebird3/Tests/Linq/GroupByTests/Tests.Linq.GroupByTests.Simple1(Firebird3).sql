﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."ParentID"
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

BeforeExecute
-- Firebird3 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	"keyParam"."ParentID",
	"keyParam"."ChildID"
FROM
	"Child" "keyParam"
WHERE
	"keyParam"."ParentID" = @ParentID

BeforeExecute
-- Firebird3 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT
	"keyParam"."ParentID",
	"keyParam"."ChildID"
FROM
	"Child" "keyParam"
WHERE
	"keyParam"."ParentID" = @ParentID

BeforeExecute
-- Firebird3 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 3

SELECT
	"keyParam"."ParentID",
	"keyParam"."ChildID"
FROM
	"Child" "keyParam"
WHERE
	"keyParam"."ParentID" = @ParentID

BeforeExecute
-- Firebird3 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 4

SELECT
	"keyParam"."ParentID",
	"keyParam"."ChildID"
FROM
	"Child" "keyParam"
WHERE
	"keyParam"."ParentID" = @ParentID

BeforeExecute
-- Firebird3 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 6

SELECT
	"keyParam"."ParentID",
	"keyParam"."ChildID"
FROM
	"Child" "keyParam"
WHERE
	"keyParam"."ParentID" = @ParentID

BeforeExecute
-- Firebird3 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 7

SELECT
	"keyParam"."ParentID",
	"keyParam"."ChildID"
FROM
	"Child" "keyParam"
WHERE
	"keyParam"."ParentID" = @ParentID


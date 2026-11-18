-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
FETCH NEXT @take ROWS ONLY

-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
FETCH NEXT @take ROWS ONLY

-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
FETCH NEXT @take ROWS ONLY

-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
FETCH NEXT @take ROWS ONLY


﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @VBLocal_SelectedValue Integer -- Int32
SET     @VBLocal_SelectedValue = 1

SELECT
	w."ParentID",
	w."ChildID",
	w."GrandChildID"
FROM
	"GrandChild" w
WHERE
	w."ChildID" IS NOT NULL AND w."ChildID" = :VBLocal_SelectedValue


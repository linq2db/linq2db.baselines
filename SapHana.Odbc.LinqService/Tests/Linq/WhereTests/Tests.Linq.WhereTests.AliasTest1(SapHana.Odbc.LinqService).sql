﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @user  -- Int32
SET     @user = 3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ?


﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 1

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t
WHERE
	t."Value1" = :param AND t."Value1" IS NOT NULL


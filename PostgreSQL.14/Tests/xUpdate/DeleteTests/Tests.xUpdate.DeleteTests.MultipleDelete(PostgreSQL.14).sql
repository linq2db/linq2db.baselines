﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" >= 1000

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(1000,NULL),
(1001,NULL)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	(t1."ParentID" = 1000 AND t1."Value1" IS NULL OR t1."ParentID" = 1001 AND t1."Value1" IS NULL)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" >= 1000


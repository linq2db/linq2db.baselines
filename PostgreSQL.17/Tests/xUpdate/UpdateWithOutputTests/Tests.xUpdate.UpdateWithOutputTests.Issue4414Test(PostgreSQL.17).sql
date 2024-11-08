﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Person"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4193Person"
(
	"Name"       text NOT NULL,
	"EmployeeId" Int      NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4193Person"
(
	"Name",
	"EmployeeId"
)
VALUES
('foo',1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

UPDATE
	"Issue4193Person"
SET
	"Name" = 'new_name'
FROM
	(
		SELECT
			x."Name",
			x."EmployeeId"
		FROM
			"Issue4193Person" x
		WHERE
			x."EmployeeId" = 1
		ORDER BY
			x."EmployeeId"
		LIMIT :take
	) t1
WHERE
	"Issue4193Person"."Name" = t1."Name" AND ("Issue4193Person"."EmployeeId" = t1."EmployeeId" OR "Issue4193Person"."EmployeeId" IS NULL AND t1."EmployeeId" IS NULL)
RETURNING
	"Issue4193Person"."EmployeeId",
	"Issue4193Person"."Name"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Person"


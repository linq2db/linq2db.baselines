﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"Name" text NOT NULL
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "TempTable"
(
	"Name"
)
VALUES
('John')

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."Name"
FROM
	"Person" p
		INNER JOIN "TempTable" t ON p."FirstName" = t."Name"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "TempTable"


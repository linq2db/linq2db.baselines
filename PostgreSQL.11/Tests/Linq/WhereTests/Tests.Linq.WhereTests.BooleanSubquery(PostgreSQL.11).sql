BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereWithBool"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "WhereWithBool"
(
	"Id"        Int     NOT NULL,
	"BoolValue" Boolean NOT NULL,

	CONSTRAINT "PK_WhereWithBool" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

INSERT INTO "WhereWithBool"
(
	"Id",
	"BoolValue"
)
VALUES
(1,True)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue"
FROM
	"WhereWithBool" t,
	"WhereWithBool" x
WHERE
	x."BoolValue" = True AND x."Id" = 1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereWithBool"


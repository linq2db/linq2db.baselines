BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereWithBool"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "WhereWithBool"
(
	"Id"        Int     NOT NULL,
	"BoolValue" Boolean NOT NULL,

	CONSTRAINT "PK_WhereWithBool" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "WhereWithBool"
(
	"Id",
	"BoolValue"
)
VALUES
(1,True)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue"
FROM
	"WhereWithBool" t
WHERE
	(
		SELECT
			x."BoolValue"
		FROM
			"WhereWithBool" x
		WHERE
			x."Id" = 1
	) = True

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereWithBool"


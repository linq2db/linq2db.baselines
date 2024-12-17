BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Mixed"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Mixed"
(
	"Int"    Int       NOT NULL,
	"Str"    text          NULL,
	"Date"   TimeStamp NOT NULL,
	"Double" Float     NOT NULL,
	"Bool"   Boolean   NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(1,'One','2001-01-01'::date,1,True),
(2,'Two','2002-02-02'::date,2,False)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Mixed" t
WHERE
	t."Int" > 0 AND (t."Str", t."Double", t."Bool") = ('One', 1, True) AND
	 EXISTS (
		SELECT
			*
		FROM
			"Mixed" u
		WHERE
			(2, u."Date") > (u."Int", t."Date")
	)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Mixed"


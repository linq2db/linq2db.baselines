BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Mixed"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Mixed"
(
	"Int"    Int       NOT NULL,
	"Str"    text          NULL,
	"Date"   TimeStamp NOT NULL,
	"Double" Float     NOT NULL,
	"Bool"   Boolean   NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Int Integer -- Int32
SET     @Int = 1
DECLARE @Str Text(3) -- String
SET     @Str = 'One'
DECLARE @Date Timestamp -- DateTime2
SET     @Date = '2001-01-01'::date
DECLARE @Double Double
SET     @Double = 1
DECLARE @Bool Boolean
SET     @Bool = True

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(
	:Int,
	:Str,
	:Date,
	:Double,
	:Bool
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @Str Text(3) -- String
SET     @Str = 'Two'
DECLARE @Date Timestamp -- DateTime2
SET     @Date = '2002-02-02'::date
DECLARE @Double Double
SET     @Double = 2
DECLARE @Bool Boolean
SET     @Bool = False

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(
	:Int,
	:Str,
	:Date,
	:Double,
	:Bool
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Mixed" t
WHERE
	t."Int" > 0 AND (t."Str", t."Double", t."Bool") = ('One', 1, True) AND
	EXISTS(
		SELECT
			1
		FROM
			"Mixed" u
		WHERE
			(2, u."Date") > (u."Int", t."Date")
	)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Mixed"


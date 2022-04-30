BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Mixed"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Mixed"
(
	"Int"    Int       NOT NULL,
	"Str"    text          NULL,
	"Date"   TimeStamp NOT NULL,
	"Double" Float     NOT NULL,
	"Bool"   Boolean   NOT NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 1
DECLARE @Str Text(3) -- String
SET     @Str = 'One'
DECLARE @Date_1 Timestamp -- DateTime2
SET     @Date_1 = '2001-01-01'::date
DECLARE @Double_1 Double
SET     @Double_1 = 1
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
	:Int_1,
	:Str,
	:Date_1,
	:Double_1,
	:Bool
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 2
DECLARE @Str Text(3) -- String
SET     @Str = 'Two'
DECLARE @Date_1 Timestamp -- DateTime2
SET     @Date_1 = '2002-02-02'::date
DECLARE @Double_1 Double
SET     @Double_1 = 2
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
	:Int_1,
	:Str,
	:Date_1,
	:Double_1,
	:Bool
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Mixed" t
WHERE
	t."Int" > 0 AND (t."Str", t."Double", t."Bool") = ('One', 1, True) AND
	EXISTS(
		SELECT
			*
		FROM
			"Mixed" u
		WHERE
			(2, u."Date") > (u."Int", t."Date")
	)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Mixed"


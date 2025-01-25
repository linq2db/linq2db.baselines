BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Tdm100"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Tdm100"
(
	"Id"          Int  NOT NULL,
	"CarSelf"     text     NULL,
	"CarNo"       text     NULL,
	"CarBrand"    text     NULL,
	"RateWgt"     text     NULL,
	"MastLeve"    text     NULL,
	"ForkPole"    text     NULL,
	"ForkPoleLen" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Trp004"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Trp004"
(
	"Id"              Int  NOT NULL,
	"CarNo"           text     NULL,
	"RuleNo"          text     NULL,
	"LastWorkVal"     text     NULL,
	"LastDate"        text     NULL,
	"RealLastWorkVal" text     NULL,
	"RealLastDate"    text     NULL,
	"Status"          text     NULL,
	"TelNo"           text     NULL,
	"RecCreator"      text     NULL,
	"RecCreateTime"   text     NULL,
	"RecRevisor"      text     NULL,
	"RecReviseTime"   text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Trp003"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Trp003"
(
	"Id"       Int  NOT NULL,
	"RuleNo"   text     NULL,
	"RuleName" text     NULL,
	"RuleType" text     NULL,
	"RuleVal"  text     NULL,
	"RuleUnit" text     NULL,
	"Remark"   text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Trp0041"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Trp0041"
(
	"Id"       Int  NOT NULL,
	"CarNo"    text     NULL,
	"FirstVal" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @carNo Text(3) -- String
SET     @carNo = '%1%'
DECLARE @carBrand Text(6) -- String
SET     @carBrand = '%test%'
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @skip Integer -- Int32
SET     @skip = 20

SELECT
	x."Id",
	x."CarNo",
	x."CarSelf",
	x."CarBrand",
	x."RateWgt",
	x."MastLeve",
	x."ForkPole",
	x."FirstVal",
	x."TelNo",
	x."RuleNo",
	x."RuleName",
	x."RuleType",
	x."RuleVal",
	x."RuleUnit",
	x."RecCreator",
	x."RecCreateTime",
	x."RecRevisor",
	x."RecReviseTime"
FROM
	(
		SELECT
			t."CarNo",
			t."CarBrand",
			t."Id",
			t."CarSelf",
			t."RateWgt",
			t."MastLeve",
			t."ForkPole",
			t4."FirstVal",
			t2."TelNo",
			t2."RuleNo",
			t3."RuleName",
			t3."RuleType",
			t3."RuleVal",
			t3."RuleUnit",
			t2."RecCreator",
			t2."RecCreateTime",
			t2."RecRevisor",
			t2."RecReviseTime"
		FROM
			"Tdm100" t
				LEFT JOIN "Trp004" t2 ON t2."CarNo" = t."CarNo" OR t2."CarNo" IS NULL AND t."CarNo" IS NULL
				LEFT JOIN "Trp003" t3 ON t3."RuleNo" = t2."RuleNo" OR t3."RuleNo" IS NULL AND t2."RuleNo" IS NULL
				LEFT JOIN "Trp0041" t4 ON t4."CarNo" = t."CarNo" OR t4."CarNo" IS NULL AND t."CarNo" IS NULL
	) x
WHERE
	x."CarNo" LIKE :carNo ESCAPE '~' AND x."CarBrand" LIKE :carBrand ESCAPE '~'
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @carNo Text(3) -- String
SET     @carNo = '%1%'
DECLARE @carBrand Text(6) -- String
SET     @carBrand = '%test%'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t."CarNo",
			t."CarBrand"
		FROM
			"Tdm100" t
				LEFT JOIN "Trp004" t2 ON t2."CarNo" = t."CarNo" OR t2."CarNo" IS NULL AND t."CarNo" IS NULL
				LEFT JOIN "Trp003" t3 ON t3."RuleNo" = t2."RuleNo" OR t3."RuleNo" IS NULL AND t2."RuleNo" IS NULL
				LEFT JOIN "Trp0041" t4 ON t4."CarNo" = t."CarNo" OR t4."CarNo" IS NULL AND t."CarNo" IS NULL
	) t1
WHERE
	t1."CarNo" LIKE :carNo ESCAPE '~' AND t1."CarBrand" LIKE :carBrand ESCAPE '~'

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Trp0041"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Trp003"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Trp004"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Tdm100"


BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4469Table"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4469Table"
(
	"Integer" Int            NOT NULL,
	"Decimal" decimal(10, 5) NOT NULL,
	"Double"  Float          NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Integer Integer -- Int32
SET     @Integer = 100
DECLARE @Decimal Numeric(3, 0) -- Decimal
SET     @Decimal = 100
DECLARE @Double Double
SET     @Double = 100

INSERT INTO "Issue4469Table"
(
	"Integer",
	"Decimal",
	"Double"
)
VALUES
(
	:Integer,
	:Decimal,
	:Double
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Numeric -- Decimal
SET     @param_1 = 33
DECLARE @param_2 Double
SET     @param_2 = 33

SELECT
	v."Integer"::Float / :param,
	v."Decimal"::Float / :param_1,
	v."Double" / :param_2
FROM
	"Issue4469Table" v
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4469Table"


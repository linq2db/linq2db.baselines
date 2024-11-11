BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table1"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2815Table1"
(
	"SRC_BIC"       Int NOT NULL,
	"DES_BIC"       Int NOT NULL,
	"IDF"           Int NOT NULL,
	"TREA_CENT"     Int NOT NULL,
	"NOT_HANDLED"   Int NOT NULL,
	"TRANS_CHANNEL" Int     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table2"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2815Table2"
(
	"ISO"  Int     NOT NULL,
	"SEPA" Boolean NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table3"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2815Table3"
(
	"TreasuryCenter" Int NOT NULL,
	"BIC"            Int NOT NULL,
	"Sepa"           Int NOT NULL,
	"Trans_Channel"  Int NOT NULL,
	"Idf"            Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table3"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table2"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table1"


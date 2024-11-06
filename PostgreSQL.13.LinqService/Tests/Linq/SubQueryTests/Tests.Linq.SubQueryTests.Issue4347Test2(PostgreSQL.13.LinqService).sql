BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TransactionEntity"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TransactionEntity"
(
	"Id"      uuid      NOT NULL,
	"ValidOn" TimeStamp NOT NULL,

	CONSTRAINT "PK_TransactionEntity" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "LineEntity"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "LineEntity"
(
	"Id"            uuid    NOT NULL,
	"TransactionId" uuid    NOT NULL,
	"Amount"        decimal NOT NULL,
	"Currency"      text        NULL,

	CONSTRAINT "PK_LineEntity" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "LineEntity"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TransactionEntity"


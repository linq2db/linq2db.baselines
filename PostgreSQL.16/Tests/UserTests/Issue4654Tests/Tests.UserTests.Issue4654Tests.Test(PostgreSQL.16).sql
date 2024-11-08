BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4654Customer"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4654Customer"
(
	"Id"   SERIAL  NOT NULL,
	"Name" text        NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4654Order"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4654Order"
(
	"Id"          SERIAL  NOT NULL,
	"ProductName" text        NULL,
	"Quantity"    Int     NOT NULL,
	"CustomerId"  Int     NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4654Product"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4654Product"
(
	"Id"    SERIAL   NOT NULL,
	"Name"  text         NULL,
	"Price" decimal  NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	c_1."Id"::text,
	c_1."Name"
FROM
	"Issue4654Customer" c_1
UNION
SELECT
	o."Id"::text,
	o."ProductName"
FROM
	"Issue4654Order" o
UNION
SELECT
	p."Id"::text,
	p."Name"
FROM
	"Issue4654Product" p

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4654Product"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4654Order"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4654Customer"


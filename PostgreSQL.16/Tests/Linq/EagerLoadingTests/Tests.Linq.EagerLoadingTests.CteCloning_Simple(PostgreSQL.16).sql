﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CteTable"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "CteTable"
(
	"Id"     Int NOT NULL,
	"Value1" Int NOT NULL,
	"Value2" Int NOT NULL,
	"Value3" Int NOT NULL,
	"Value4" Int NOT NULL,
	"Value5" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CteChildTable"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "CteChildTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH "CTE_1" ("Value4")
AS
(
	SELECT
		r."Value4"
	FROM
		"CteTable" r
)
SELECT
	m_1."Id",
	d_1."Id",
	d_1."Value1",
	d_1."Value2",
	d_1."Value3",
	d_1."Value4",
	d_1."Value5"
FROM
	(
		SELECT DISTINCT
			d."Id"
		FROM
			"CTE_1" t1
				LEFT JOIN "CteChildTable" d ON t1."Value4" = d."Id"
	) m_1
		INNER JOIN "CteTable" d_1 ON m_1."Id" = d_1."Value3"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH "CTE_1"
(
	"Value4",
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value5"
)
AS
(
	SELECT
		r."Value4",
		r."Id",
		r."Value1",
		r."Value2",
		r."Value3",
		r."Value5"
	FROM
		"CteTable" r
)
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value3",
	t1."Value4",
	t1."Value5",
	d."Id"
FROM
	"CTE_1" t1
		LEFT JOIN "CteChildTable" d ON t1."Value4" = d."Id"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CteChildTable"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CteTable"


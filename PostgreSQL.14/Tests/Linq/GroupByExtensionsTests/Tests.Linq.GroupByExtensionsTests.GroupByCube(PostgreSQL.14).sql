﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "GroupSampleClass"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "GroupSampleClass"
(
	"Id1"   Int NOT NULL,
	"Id2"   Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(1,1,1),
(2,2,0),
(3,0,1),
(4,1,0),
(5,2,1),
(6,0,0),
(7,1,1),
(8,2,0),
(9,0,1),
(10,1,0)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	GROUPING(g_2."Id1"),
	g_2."Id1",
	Count(*)
FROM
	(
		SELECT DISTINCT
			g_1."Id1",
			g_1."Id2",
			g_1."Value" as "Value_1"
		FROM
			"GroupSampleClass" g_1
	) g_2
GROUP BY CUBE (
	g_2."Id1",
	g_2."Id2"
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "GroupSampleClass"


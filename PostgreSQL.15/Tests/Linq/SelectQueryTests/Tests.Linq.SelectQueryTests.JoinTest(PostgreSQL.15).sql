﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(1,100)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	t."Value",
	s."Key_1",
	s."SecondValue"
FROM
	"SampleClass" t
		INNER JOIN (
			SELECT
				1 as "Key_1",
				3 as "SecondValue"
		) s ON s."Key_1" = t."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"


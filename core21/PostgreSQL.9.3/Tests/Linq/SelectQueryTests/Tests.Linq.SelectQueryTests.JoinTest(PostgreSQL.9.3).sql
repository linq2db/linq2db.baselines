BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(1,100)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t."Id",
	t."Value",
	1,
	3
FROM
	"SampleClass" t
		INNER JOIN (
			SELECT
				1 as "Key_1"
		) s ON s."Key_1" = t."Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "SampleClass"


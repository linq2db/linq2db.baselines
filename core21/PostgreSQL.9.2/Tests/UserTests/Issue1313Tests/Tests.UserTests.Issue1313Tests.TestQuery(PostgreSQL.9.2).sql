BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "ValueItem"
(
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "ValueItem"
(
	"Value"
)
VALUES
(
	123
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	row_1."Value"
FROM
	"ValueItem" row_1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "ValueItem"


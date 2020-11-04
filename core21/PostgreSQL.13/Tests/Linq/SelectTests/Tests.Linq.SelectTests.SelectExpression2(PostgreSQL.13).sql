BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SelectExpressionTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_SelectExpressionTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "SelectExpressionTable"
(
	"ID"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Uuid -- Guid
SET     @p1 = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p2 Uuid -- Guid
SET     @p2 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	:p1,
	:p2
FROM
	"SelectExpressionTable" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SelectExpressionTable"


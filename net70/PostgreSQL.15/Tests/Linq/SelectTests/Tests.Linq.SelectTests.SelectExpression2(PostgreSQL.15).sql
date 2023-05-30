BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SelectExpressionTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SelectExpressionTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_SelectExpressionTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "SelectExpressionTable"
(
	"ID"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Uuid -- Guid
SET     @p = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'::uuid
DECLARE @p_1 Uuid -- Guid
SET     @p_1 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'::uuid
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	:p,
	:p_1
FROM
	"SelectExpressionTable" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SelectExpressionTable"


BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "SelectExpressionTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_SelectExpressionTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "SelectExpressionTable"
(
	"ID"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p_1 Uuid -- Guid
SET     @p_1 = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p_2 Uuid -- Guid
SET     @p_2 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	:p_1,
	:p_2
FROM
	"SelectExpressionTable" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "SelectExpressionTable"


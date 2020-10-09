BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	CURRENT_TIMESTAMP + 1 * Interval '1 Day', 
	CURRENT_TIMESTAMP + 2 * Interval '1 Day'
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "SampleClass"


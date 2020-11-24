BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
('Value1'),
('Value2'),
('Value3'),
('Value4'),
('Value5'),
('Value6'),
('Value7'),
('Value8'),
('Value9')

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take_2 Integer -- Int32
SET     @take_2 = 2
DECLARE @skip_2 Integer -- Int32
SET     @skip_2 = 3

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
LIMIT :take_2 OFFSET :skip_2 

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "TakeSkipClass"


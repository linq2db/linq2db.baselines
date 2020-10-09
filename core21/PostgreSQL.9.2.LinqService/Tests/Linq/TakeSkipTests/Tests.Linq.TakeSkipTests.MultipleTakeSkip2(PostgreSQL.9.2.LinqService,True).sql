BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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
('Value8')

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 2
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 3

SELECT 
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
LIMIT :take_1 OFFSET :skip_1 

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "TakeSkipClass"


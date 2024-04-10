﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
LIMIT :take OFFSET 3 

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"


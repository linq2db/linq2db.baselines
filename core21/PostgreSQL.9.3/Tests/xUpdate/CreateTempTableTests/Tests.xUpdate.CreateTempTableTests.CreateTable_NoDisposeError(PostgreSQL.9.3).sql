﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "#TempTable"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TEMPORARY TABLE "#TempTable"
(
	"ID" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "#TempTable"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "#TempTable"


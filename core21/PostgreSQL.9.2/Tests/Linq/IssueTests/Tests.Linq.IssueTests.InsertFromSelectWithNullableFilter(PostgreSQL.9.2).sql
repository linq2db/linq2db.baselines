﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	123,
	t2."smallintDataType"
FROM
	(
		SELECT DISTINCT
			c_1."smallintDataType"
		FROM
			"AllTypes" t1
				INNER JOIN "AllTypes" c_1 ON t1."smallintDataType" = c_1."intDataType"
		WHERE
			t1."smallintDataType" IS NULL
	) t2

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ID Smallint -- Int16
SET     @ID = 1234

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	123,
	t2."smallintDataType"
FROM
	(
		SELECT DISTINCT
			c_1."smallintDataType"
		FROM
			"AllTypes" t1
				INNER JOIN "AllTypes" c_1 ON t1."smallintDataType" = c_1."intDataType"
		WHERE
			t1."smallintDataType" = :ID
	) t2


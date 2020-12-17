﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "AsyncDataTable"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_AsyncDataTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"AsyncDataTable" c_1
			WHERE
				c_1."Id" = :Id
		)
			THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AsyncDataTable"


-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE tmptbl1
(
	"ID"    Int  NOT NULL,
	"Value" text     NULL,

	CONSTRAINT "PK_tmptbl1" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO tmptbl1
(
	"ID",
	"Value"
)
VALUES
(1,'Value1'),
(2,NULL)

-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE tmptbl2
(
	"ID"    Int  NOT NULL,
	"Value" text NOT NULL,

	CONSTRAINT "PK_tmptbl2" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO tmptbl2
(
	"ID",
	"Value"
)
VALUES
(1,'Value1'),
(3,'Value2')

-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE tmptbl3
(
	"ID"    Int  NOT NULL,
	"Value" text     NULL,

	CONSTRAINT "PK_tmptbl3" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO tmptbl3
(
	"ID",
	"Value"
)
VALUES
(1,'Value1'),
(2,NULL)

-- PostgreSQL.15 PostgreSQL

SELECT
	t4."ID",
	t4."Value"
FROM
	tmptbl1 t2
		LEFT JOIN tmptbl2 t3 ON t2."ID" = t3."ID"
		LEFT JOIN tmptbl3 t4 ON Coalesce(t3."Value", t2."Value") = t4."Value" OR t3."Value" IS NULL AND t2."Value" IS NULL AND t4."Value" IS NULL

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	tmptbl1 t1

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	tmptbl2 t1

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	tmptbl3 t1

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS tmptbl3

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS tmptbl2

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS tmptbl1


-- Informix.DB2 Informix

CREATE TEMP TABLE tmptbl1
(
	ID      Int           NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY (ID)
)

INSERT BULK tmptbl1

-- Informix.DB2 Informix

CREATE TEMP TABLE tmptbl2
(
	ID      Int           NOT NULL,
	"Value" NVarChar(255) NOT NULL,

	PRIMARY KEY (ID)
)

INSERT BULK tmptbl2

-- Informix.DB2 Informix

CREATE TEMP TABLE tmptbl3
(
	ID      Int           NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY (ID)
)

INSERT BULK tmptbl3

-- Informix.DB2 Informix

SELECT
	t4.ID,
	t4."Value"
FROM
	tmptbl1 t2
		LEFT JOIN tmptbl2 t3 ON t2.ID = t3.ID
		LEFT JOIN tmptbl3 t4 ON Nvl(t3."Value", t2."Value") = t4."Value" OR t3."Value" IS NULL AND t2."Value" IS NULL AND t4."Value" IS NULL

-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1."Value"
FROM
	tmptbl1 t1

-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1."Value"
FROM
	tmptbl2 t1

-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1."Value"
FROM
	tmptbl3 t1

-- Informix.DB2 Informix

DROP TABLE IF EXISTS tmptbl3

-- Informix.DB2 Informix

DROP TABLE IF EXISTS tmptbl2

-- Informix.DB2 Informix

DROP TABLE IF EXISTS tmptbl1


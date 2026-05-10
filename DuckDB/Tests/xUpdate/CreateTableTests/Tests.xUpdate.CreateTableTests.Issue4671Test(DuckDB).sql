-- DuckDB

CREATE SEQUENCE IF NOT EXISTS Issue4671EntityTMP_Id_seq START 1;
CREATE TEMPORARY TABLE Issue4671EntityTMP
(
	Id      INTEGER DEFAULT NEXTVAL('"Issue4671EntityTMP_Id_seq"'),
	"Value" INTEGER                                                 NOT NULL,

	PRIMARY KEY (Id)
)

-- DuckDB

INSERT INTO Issue4671Entity
(
	"Value"
)
VALUES
(
	1
)

-- DuckDB

INSERT INTO Issue4671EntityTMP
(
	"Value"
)
VALUES
(
	2
)

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	Issue4671Entity t1
LIMIT 2

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	Issue4671EntityTMP t1
LIMIT 2

-- DuckDB

DROP TABLE IF EXISTS Issue4671EntityTMP;
DROP SEQUENCE IF EXISTS Issue4671EntityTMP_Id_seq;
DROP SEQUENCE IF EXISTS Issue4671EntityTMP_Id_seq_reset;


-- DuckDB
CREATE SEQUENCE IF NOT EXISTS TempIdentityRowTMP_Id_seq START 1;
CREATE TEMPORARY TABLE TempIdentityRowTMP
(
	Id      INTEGER DEFAULT NEXTVAL('"TempIdentityRowTMP_Id_seq"'),
	"Value" INTEGER                                                 NOT NULL,

	PRIMARY KEY (Id)
)

-- DuckDB
INSERT INTO TempIdentityRow
(
	"Value"
)
VALUES
(
	1
)

-- DuckDB
INSERT INTO TempIdentityRowTMP
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
	TempIdentityRow t1
LIMIT 2

-- DuckDB
SELECT
	t1.Id,
	t1."Value"
FROM
	TempIdentityRowTMP t1
LIMIT 2

-- DuckDB
DROP TABLE IF EXISTS TempIdentityRowTMP;
DROP SEQUENCE IF EXISTS TempIdentityRowTMP_Id_seq;
DROP SEQUENCE IF EXISTS TempIdentityRowTMP_Id_seq_reset;


-- Informix.DB2 Informix
CREATE TEMP TABLE TempIdentityRowTMP
(
	Id      SERIAL  NOT NULL,
	"Value" Int     NOT NULL,

	PRIMARY KEY (Id)
)

-- Informix.DB2 Informix
INSERT INTO TempIdentityRow
(
	"Value"
)
VALUES
(
	1
)

-- Informix.DB2 Informix
INSERT INTO TempIdentityRowTMP
(
	"Value"
)
VALUES
(
	2
)

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TempIdentityRow t1

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TempIdentityRowTMP t1

-- Informix.DB2 Informix
DROP TABLE IF EXISTS TempIdentityRowTMP


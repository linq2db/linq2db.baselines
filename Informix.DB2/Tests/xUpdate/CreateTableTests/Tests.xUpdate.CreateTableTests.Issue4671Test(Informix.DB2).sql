-- Informix.DB2 Informix

CREATE TEMP TABLE Issue4671EntityTMP
(
	Id      SERIAL  NOT NULL,
	"Value" Int     NOT NULL,

	PRIMARY KEY (Id)
)

-- Informix.DB2 Informix

INSERT INTO Issue4671Entity
(
	"Value"
)
VALUES
(
	1
)

-- Informix.DB2 Informix

INSERT INTO Issue4671EntityTMP
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
	Issue4671Entity t1

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	Issue4671EntityTMP t1

-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4671EntityTMP


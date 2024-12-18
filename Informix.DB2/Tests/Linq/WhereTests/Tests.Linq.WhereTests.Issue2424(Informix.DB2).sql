BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Isue2424Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Isue2424Table
(
	Id       Int           NOT NULL,
	StrValue NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StrValue VarChar(1) -- String
SET     @StrValue = '1'

INSERT INTO Isue2424Table
(
	Id,
	StrValue
)
VALUES
(
	@Id,
	@StrValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @StrValue VarChar(1) -- String
SET     @StrValue = '3'

INSERT INTO Isue2424Table
(
	Id,
	StrValue
)
VALUES
(
	@Id,
	@StrValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @StrValue VarChar(1) -- String
SET     @StrValue = '5'

INSERT INTO Isue2424Table
(
	Id,
	StrValue
)
VALUES
(
	@Id,
	@StrValue
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue = '3' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue = '3' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '5' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '5' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '1' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '1' AND i.StrValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Isue2424Table


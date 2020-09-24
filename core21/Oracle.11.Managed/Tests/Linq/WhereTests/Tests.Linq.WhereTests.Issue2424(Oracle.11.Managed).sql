BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Isue2424Table
(
	Id       Int          NOT NULL,
	StrValue VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO Isue2424Table (Id, StrValue) VALUES (1,'1')
	INTO Isue2424Table (Id, StrValue) VALUES (3,'3')
	INTO Isue2424Table (Id, StrValue) VALUES (5,'5')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue = '3' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue = '3' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '5' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '5' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '1' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '1' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE Isue2424Table


BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Isue2424Table
(
	Id       Int          NOT NULL,
	StrValue VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO Isue2424Table (Id, StrValue) VALUES (1,'1')
	INTO Isue2424Table (Id, StrValue) VALUES (3,'3')
	INTO Isue2424Table (Id, StrValue) VALUES (5,'5')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue = '3'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue = '3'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '5'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '5'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '1'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	i.Id, 
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '1'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Isue2424Table

